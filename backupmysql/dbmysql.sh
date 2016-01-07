#!/bin/bash
ip1=ipaddress
ip2=ipaddress2
rm -rf /home/path/table.txt
for ip in $ip1 $ip2
do
    table=`mysql -usaga -p'password' -h $ip -P 3306 -e "show databases"|awk '$1!~/Database|information_schema|test|mysql/{print $1}'`
    echo $ip:$table >>/home/path/table.txt
done

echo "您输入的区号是：$1,$2,确认请回车"
read
for db in $1 $2
do
   ip=`grep -w $db /home/path/table.txt |awk -F":" '{print $1}'`
   mysqldump -usaga -p'password' -h $ip -P 3306 --default-character-set=utf8 --hex-blob --databases $db > /data3/saga_dbbackup/$db.sql

if [ -d  /data1/redis2.8.8 ];then
   cd /data1/redis2.8.8/redis_dump
   redis-dump ip port password num /data3/path/$db.dat $db

fi
   echo "$db 备份完成"
done

