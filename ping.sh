#!/bin/bash
rm -rf ~/test.txt
for i in `cat ~/ip.txt` ; do
loss=`ping -c 3 $i|grep packet\ loss|awk -F, '{print $3}'|awk -F" " '{print $1}'`
avg=`ping -c 3 $i|tail -1|awk -F/ '{print $5}'`
tiao=`traceroute $i|wc -l`
echo "$i packet loss is ${loss} avg ping is  ${avg} traceroute is ${tiao} ">~/test.txt
done
