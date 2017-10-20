#! /usr/bin/env python3
# -*- coding: utf-8 -*- 

import os
import logging
import asyncio
import aiomysql
import libtorrent as lt
from asyncio import Queue

pool = None
torrent_queue = Queue()
TORRENT_DIR = './torrent/'
logging.basicConfig(filename='faild_torrent.log', level=logging.INFO)


def get_extend(name):
    name = name.lower()
    if name.rfind('.')>0:
        return name.rsplit('.',1)[-1]
    return ''


def escape_string(name):
    return '' if not name else aiomysql.escape_string(name)


async def create_pool():
    global pool
    pool = await aiomysql.create_pool(db='dht'
                                    ,host='127.0.0.1'
                                    ,user='dht'
                                    ,password='dht'
                                    ,charset='utf8'
                                    ,unix_socket='/var/run/mysqld/mysqld.sock'
                                    # ,loop=loop
                                    ,minsize=1
                                    ,maxsize=20)
    
    
async def query(sql):
    with (await pool) as conn:
        cur = await conn.cursor()
        await cur.execute(sql)
        await cur.close()
        await conn.commit()


async def find(sql):
    with (await pool) as conn:
        cur = await conn.cursor()
        await cur.execute(sql)
        res = await cur.fetchall()
        return res

async def get_info(torrent):
    try:
        info = lt.torrent_info('{}{}'.format(TORRENT_DIR,torrent))
    except:
        logging.warning(torrent)
        return None
    
    name       = escape_string(info.name())
    info_hash  = str(info.info_hash())
    num_files  = info.num_files()
    total_size = info.total_size()
    
    if '{}.torrent'.format(info_hash.upper())!=torrent:
        os.rename('{}{}'.format(TORRENT_DIR,torrent),
                  '{}{}.torrent'.format(TORRENT_DIR,info_hash.upper()))
    
    sql = '''Insert Into torrent_info (info_hash
                                      ,name
                                      ,total_size
                                      ,num_files) 
                    Values ("{}","{}",{},{});
                            '''.format(info_hash
                                      ,name
                                      ,total_size
                                      ,num_files)    
    await query(sql)

    sql = 'Select tid From torrent_info Where info_hash="{}";'.format(info_hash)
    res = await find(sql)
    if res is None:return
    
    tid = res[0][0]
    tid_list = [t[0] for t in res]
    if len(tid_list)>1:
        tid_list[0] = 0
        sql = 'Delete From torrent_info Where tid In {};'.format(str(tuple(tid_list)))
        await query(sql)
    
    sql = '''Insert Into torrent_files_{} (tid
                                          ,file_path
                                          ,file_size
                                          ,file_ext) Values '''.format(info_hash[:1])
    for i in info.files():
        path   = escape_string(i.path.strip())
        sql += '({},"{}",{},"{}"),'.format(tid,path,i.size,get_extend(path))
    sql = sql[:-1]+';'
    await query(sql)
    
    row = 0
    sql = 'Insert Into torrent_trackers (tid,url) Values '
    for i in info.trackers():
        try:
            url = escape_string(i.url.strip())
        except:
            continue
        sql += '({},"{}"),'.format(tid,url)
        row = row + 1
    if row>0:
        sql = sql[:-1]+';'
        await query(sql)

    sql = 'Update torrent_info Set status=1 Where tid={};'.format(tid)
    await query(sql)
    
    print('[{}]>> {}'.format(tid,info_hash))


async def fetch_worker():
    while True:
        torrent = await torrent_queue.get()
        try:
            await get_info(torrent)
        finally:
            torrent_queue.task_done()


async def main():
    await create_pool()
    
    sql = 'Select tid From torrent_info Where status=0;'
    res = await find(sql)
    if res:
        tid_list = [0]
        for i in res:
            tid_list.append(i[0])
        
        tid_in = str(tuple(tid_list))
        sql = 'Delete From torrent_trackers Where tid In {};'.format(tid_in)
        await query(sql)
        for j in '0123456789abcdef':
            sql = 'Delete From torrent_files_{} Where tid In {};'.format(j,tid_in)
            await query(sql)
        sql = 'Delete From torrent_info Where tid In {};'.format(tid_in)
        await query(sql)
            
    torr_set = set([t for t in os.listdir(TORRENT_DIR) if t.endswith('.torrent')])
    hash_set = set()
    
    sql = 'Select info_hash From torrent_info Where status=1;'
    res = await find(sql)
    if res:
        for i in res:
            hash_set.add('{}.torrent'.format(i[0].upper()))
    
    task_list = list(torr_set - hash_set)
    
    print(len(torr_set),len(hash_set),len(task_list))
    
    await asyncio.wait([torrent_queue.put(t) for t in task_list])
    tasks = [asyncio.ensure_future(fetch_worker()) for _ in range(1024)]
    
    await torrent_queue.join()
    for task in tasks:
        task.cancel()
                        
    pool.close()
    await pool.wait_closed()
    
    
if __name__=='__main__': 
    loop  = asyncio.get_event_loop() 
    loop.run_until_complete(main())
    loop.close()
    