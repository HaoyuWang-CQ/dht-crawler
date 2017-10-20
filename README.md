## asyncDHT

DHT爬虫，脚本写得有点乱，使用请自行优化。

- downTorrent.py

从`http://bt.box.n0808.com`上下载种子，`max_tasks`是同时处理任务的数量

```
python3 downTorrent.py
```


- importTorrent.py

将`torrent`文件下的种子解析导入数据库

```
python3 importTorrent.py
```

- getAddr.py

从`http://ip.taobao.com/service/getIpInfo.php?ip=`获取IP信息

```
python3 getAddr.py
```

- example.py

抓取info_hash脚本

```
python3 example.py
```

- maga.py

基于[Maga](https://github.com/whtsky/maga)修改了一些地方

- dht.sql

数据表结构