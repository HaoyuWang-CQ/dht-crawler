#! /usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import asyncio, aiohttp, aiomysql
from asyncio import Queue

class Crawler:
    def __init__(self, max_tasks=32):
        self.url = 'http://bt.box.n0808.com/{}/{}/{}.torrent'
        self.pool = None
        self.max_tasks = max_tasks
        self.hash_queue = Queue()


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
        
        
    async def update(self, info_hash, code):
        sql = 'update announce_peer_{} set status={} where info_hash="{}";'.format(info_hash[:1].lower(),code,info_hash.lower())
        await self.query(sql)
        
        
    async def get_torrent(self, info_hash):
        url = self.url.format(info_hash[:2],info_hash[-2:],info_hash)
        try:
            with aiohttp.Timeout(300):
                async with aiohttp.get(url) as response:
                    try:
                        assert response.status == 200
                        print('[+][{}]{}'.format(response.status, response.url))
                        return await response.read()
                    except:
                        if response.status==404:
                            await self.update(info_hash, 2)
                        elif response.status==403:
                            await self.update(info_hash, 3)
                        print('[-][{}]{}'.format(response.status, response.url))
        except:
            print('[!][000]{}'.format(url))
            
            
    async def down(self, info_hash):
        torrent = await self.get_torrent(info_hash)
        if torrent:
            with open('./torrent/{}.torrent'.format(info_hash), 'wb') as f:
                f.write(torrent)
            await self.update(info_hash, 1)     
            
            
    async def fetch_worker(self):
        while True:
            info_hash = await self.hash_queue.get()
            try:
                await self.down(info_hash)
            finally:
                self.hash_queue.task_done()
                

    async def run(self):
        await self.create_pool()
        
        table = list('0123456789abcdef')
        while len(table)>0:
            for t in table:
                sql = 'select distinct info_hash from announce_peer_{} where status=0;'.format(t)
                res_hash = await self.find(sql)
                
                if res_hash>0:
                    await asyncio.wait([self.hash_queue.put(i[0].upper()) for i in res_hash])
                    tasks = [asyncio.ensure_future(self.fetch_worker()) for _ in range(self.max_tasks)]
                    await self.hash_queue.join()

                    for task in tasks:
                        task.cancel()
                else:
                    table.remove(t)
                
        self.pool.close()
        await self.pool.wait_closed()
    
    
if __name__ == '__main__':
    
    max_tasks = 512
    path = './torrent'
    if not os.path.exists(path):
        os.makedirs(path)
    
    loop = asyncio.get_event_loop()
    crawler = Crawler(max_tasks=max_tasks)
    loop.run_until_complete(crawler.run())
    loop.close() 
