#! /usr/bin/env python3
# -*- coding: utf-8 -*-

import os, json, logging
import asyncio, aiohttp, aiomysql
from asyncio import Queue

logging.basicConfig(filename='ip_json.log', level=logging.INFO)

class Crawler:
    def __init__(self, max_tasks=32):
        self.url = 'http://ip.taobao.com/service/getIpInfo.php?ip={}'
        self.pool = None
        self.max_tasks = max_tasks
        self.ip_queue = Queue()


    async def create_pool(self):
        self.pool = await aiomysql.create_pool(db='dht'
                                        ,host='127.0.0.1'
                                        ,user='dht'
                                        ,password='dht'
                                        ,charset='utf8'
                                        ,unix_socket='/var/run/mysqld/mysqld.sock'
                                        # ,loop=loop
                                        ,minsize=1
                                        ,maxsize=20)
    
    
    async def query(self, sql):
        with (await self.pool) as conn:
            cur = await conn.cursor()
            await cur.execute(sql)
            await cur.close()
            await conn.commit()


    async def find(self, sql):
        with (await self.pool) as conn:
            cur = await conn.cursor()
            await cur.execute(sql)
            res = await cur.fetchall()
            return res
        
    def escape_string(self, name):
        name = aiomysql.escape_string(name)
        return '' if name is None else name
        
    async def get_info(self, ip):
        url = self.url.format(ip)
        try:
            with aiohttp.Timeout(3000):
                async with aiohttp.get(url) as response:
                    try:
                        assert response.status == 200
                        print('[+][{}]{}'.format(response.status, response.url))
                        return await response.read()
                    except:
                        print('[-][{}]{}'.format(response.status, response.url))
        except:
            print('[!][000]{}'.format(url))
            
            
    async def get(self, ip):
        json_data = await self.get_info(ip)
        if json_data:
            logging.info(json_data)
            json_data = json.loads(json_data.decode('utf8'))
            if str(json_data['code'])=='0':
                ip_info = json_data['data']
                sql = 'update torrent_addr set  country="{}",country_id="{}",area="{}",area_id="{}",region="{}",region_id="{}",city="{}",city_id="{}",county="{}",county_id="{}",isp="{}",isp_id="{}" where ip="{}"; '.format(self.escape_string(ip_info['country'])
                                                ,self.escape_string(ip_info['country_id'])
                                                ,self.escape_string(ip_info['area'])
                                                ,self.escape_string(ip_info['area_id'])
                                                ,self.escape_string(ip_info['region'])
                                                ,self.escape_string(ip_info['region_id'])
                                                ,self.escape_string(ip_info['city'])
                                                ,self.escape_string(ip_info['city_id'])
                                                ,self.escape_string(ip_info['county'])
                                                ,self.escape_string(ip_info['county_id'])
                                                ,self.escape_string(ip_info['isp'])
                                                ,self.escape_string(ip_info['isp_id'])
                                                ,ip_info['ip'])
                await self.query(sql)
            
            
    async def fetch_worker(self):
        while True:
            ip = await self.ip_queue.get()
            try:
                await self.get(ip)
            finally:
                self.ip_queue.task_done()
                

    async def run(self):
        await self.create_pool()
        
        sql = 'select distinct ip from torrent_addr where country="";'
        res = await self.find(sql)
        if res:
            await asyncio.wait([self.ip_queue.put(r[0]) for r in res])
            tasks = [asyncio.ensure_future(self.fetch_worker()) for _ in range(self.max_tasks)]
            
            await self.ip_queue.join()

            for task in tasks:
                task.cancel()
                
        self.pool.close()
        await self.pool.wait_closed()
    
    
if __name__ == '__main__':
    
    max_tasks = 1024
    loop = asyncio.get_event_loop()
    crawler = Crawler(max_tasks=max_tasks)
    loop.run_until_complete(crawler.run())
    loop.close() 
