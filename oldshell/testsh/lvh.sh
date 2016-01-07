#!/bin/bash
ds=`fdisk -l |grep '^Disk /'|grep 'sd[a-z]'|awk -F: '{print $1}'|awk '{print $2}'`
readname () {
echo -e "当前有这些磁盘\n$ds"
echo  "请选择您要抹掉的磁盘"
read -t 60 -p "请输入 退出请按q或quit,请在1分钟内输入否则退出:" choose
choose=${choose:-q}
[ $choose == 'q' ]||[ $choose == 'quit' ]&& exit 0
until [ $choose == '/dev/sda' ]||[ $choose == '/dev/sdb' ]; do
#until [ $choose == [ a-z ] ]; do
	echo "您输入的不对请重新输入"
	echo  "请选择您要抹掉的磁盘选择方式"
	read -t 5 -p  "请输入 退出请按q或quit,请在1分钟内输入否则退出:" choose
	choose=${choose:-q}
	[ $choose == 'q' ]||[ $choose == 'quit' ]&& exit 0
done
echo "您选择的磁盘是$choose"
}
readyon () {
read -p "下面操作会损坏数据，您确定要执行吗？如果是的话请按y否则按n :" yon
}

ford () {
dd if=/dev/zero of=$choose bs=512 count=1
	sync
	sleep 5
echo 'n
p
1

+20M
n
p
2

+512M
n
p
3

+128M
t
3
82
w' |fdisk $choose
}

casein () {
case $yon in
y|Y)
	ford
	;;
n|N)
	readname
	readyon
	casein	
	;;
*)
	exit 9	
	;;
esac
}


readname
readyon
casein
