#!/bin/bash
#脚本名:mysql.sh
#脚本描述:查询mysql数据库并获取玩家信息
#    by yongqing.liu
#         2015.12.21
#



user=USERS
pass='pasword'
host=ipaddress
port=PORT
db=dbname
#mysql -u${user} -p${pass} -h ${host} -P ${port} -D ${db} -e "${common}" --default-character-set=gbk >abc.txt
mysql -u${user} -p${pass} -h ${host} -P ${port} --default-character-set=gbk <<EOF>abc.txt
use $db;
select id,accountId,accountName,name,level from player where name='钢铁侠';

EOF


#sed -i 1d abc.txt
#while read line;do

#变量赋值的方法
#id=`echo $line|awk '{print $1}'`
#aid=`echo $line|awk '{print $2}'`
#accn=`echo $line|awk '{print $3}'`
#na=`echo $line|awk '{print $4}'`
#level=`echo $line|awk '{print $5}'`
#echo "-----------------------------"
#echo "-----------------------------"
#echo "当前用户的角色ID为:$id"
#echo "当前用户的账户ID为:$aid"
#echo "当前用户的账户名称为:$accn"
#echo "当前用户的角色名为:$na"
#echo "当前用户的角色名为:$level"
#echo "-----------------------------"
#echo "-----------------------------"

#数组和HELP文档的方法
#a=(`echo $line`)
#cat <<HELP
#角色id: ${a[0]}
#角色名: ${a[1]}
#账户id: ${a[2]}
#账户名: ${a[3]}
#级别: ${a[4]}

#HELP


#用awk直接处理文件
awk 'NR>1{print "角色id: "$1"\n角色名: "$2"\n账户id: "$3"\n账户名: "$4"\n级别: "$5"\n"}' abc.txt

#done<abc.txt






