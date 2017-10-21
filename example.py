#! /usr/bin/env python3
# -*- coding: utf-8 -*-
#
import logging
import aiomysql
from maga import Maga

logging.basicConfig(filename='/root/infohash.log', level=logging.INFO)

class Crawler(Maga):
    async def handler(self, info):
        
        # 这里建议写成连接池，每次都连接很没效率
        conn = await aiomysql.connect(db='dht',
                                      user='dht',
                                      password='dht',
                                      host='localhost',
                                      charset='utf8')

        # use TCP/IP rather than unix_socket
        # unix_socket='/var/run/mysqld/mysqld.sock')
        
        cur = await conn.cursor()
        info_hash = info['info_hash'].lower()
        
        if info['q_type']=='get_peers':
            sql = 'Select 1 From `get_peers_%s` Where `info_hash`="%s";' % (info_hash[:1], info_hash)
            await cur.execute(sql)
            ret = await cur.fetchone()
            if ret is None or len(ret)<1:
                sql = 'Insert Into `get_peers_%s` (`info_hash`) Values ("%s");' % (info_hash[:1], info_hash)
                await cur.execute(sql)
                await conn.commit()
                
        if info['q_type']=='announce_peer':
            sql = 'Select 1 From `announce_peer_%s` Where `info_hash`="%s" And `ip`="%s" And `port`="%s";' % (info_hash[:1], info_hash, info['ip'], info['port'])
            await cur.execute(sql)
            ret = await cur.fetchone()
            if ret is None or len(ret)<1:
                sql = 'Insert Into `announce_peer_%s` (`info_hash`,`ip`,`port`,`name`) Values ("%s","%s","%s","%s");' % (info_hash[:1], info_hash, info['ip'], info['port'],aiomysql.escape_string(info['name']))
                await cur.execute(sql)
                await conn.commit()
                
        logging.info(info_hash)
        await cur.close()
        conn.close()
            

if __name__=='__main__':
    crawler = Crawler()
    crawler.run()
