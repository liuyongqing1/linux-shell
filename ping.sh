#!/bin/bash
for i in `cat ~/ip.txt` ; do
loss=`ping -c 3 $i|grep packet\ loss|awk -F, '{print $3}'|awk -F" " '{print $1}'`
avg=`ping -c 3 $i|tail -1|awk -F/ '{print $5}'`
tiao=`traceroute $i|wc -l`
echo "$i �Ķ�����Ϊ${loss} ƽ��pingֵ ${avg} tracert����${tiao} ">~/test.txt
done
