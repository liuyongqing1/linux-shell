#!/bin/bash
#�ű���:mysql.sh
#�ű�����:��ѯmysql���ݿⲢ��ȡ�����Ϣ
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
select id,accountId,accountName,name,level from player where name='������';

EOF


#sed -i 1d abc.txt
#while read line;do

#������ֵ�ķ���
#id=`echo $line|awk '{print $1}'`
#aid=`echo $line|awk '{print $2}'`
#accn=`echo $line|awk '{print $3}'`
#na=`echo $line|awk '{print $4}'`
#level=`echo $line|awk '{print $5}'`
#echo "-----------------------------"
#echo "-----------------------------"
#echo "��ǰ�û��Ľ�ɫIDΪ:$id"
#echo "��ǰ�û����˻�IDΪ:$aid"
#echo "��ǰ�û����˻�����Ϊ:$accn"
#echo "��ǰ�û��Ľ�ɫ��Ϊ:$na"
#echo "��ǰ�û��Ľ�ɫ��Ϊ:$level"
#echo "-----------------------------"
#echo "-----------------------------"

#�����HELP�ĵ��ķ���
#a=(`echo $line`)
#cat <<HELP
#��ɫid: ${a[0]}
#��ɫ��: ${a[1]}
#�˻�id: ${a[2]}
#�˻���: ${a[3]}
#����: ${a[4]}

#HELP


#��awkֱ�Ӵ����ļ�
awk 'NR>1{print "��ɫid: "$1"\n��ɫ��: "$2"\n�˻�id: "$3"\n�˻���: "$4"\n����: "$5"\n"}' abc.txt

#done<abc.txt






