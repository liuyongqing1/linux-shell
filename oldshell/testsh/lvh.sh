#!/bin/bash
ds=`fdisk -l |grep '^Disk /'|grep 'sd[a-z]'|awk -F: '{print $1}'|awk '{print $2}'`
readname () {
echo -e "��ǰ����Щ����\n$ds"
echo  "��ѡ����ҪĨ���Ĵ���"
read -t 60 -p "������ �˳��밴q��quit,����1��������������˳�:" choose
choose=${choose:-q}
[ $choose == 'q' ]||[ $choose == 'quit' ]&& exit 0
until [ $choose == '/dev/sda' ]||[ $choose == '/dev/sdb' ]; do
#until [ $choose == [ a-z ] ]; do
	echo "������Ĳ�������������"
	echo  "��ѡ����ҪĨ���Ĵ���ѡ��ʽ"
	read -t 5 -p  "������ �˳��밴q��quit,����1��������������˳�:" choose
	choose=${choose:-q}
	[ $choose == 'q' ]||[ $choose == 'quit' ]&& exit 0
done
echo "��ѡ��Ĵ�����$choose"
}
readyon () {
read -p "��������������ݣ���ȷ��Ҫִ��������ǵĻ��밴y����n :" yon
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
