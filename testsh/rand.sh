#!/bin/bash
file=~yongqing.liu/ran.txt
if [ -e $file ]; then
	echo "��ǰ�Ѿ������ļ���ɾ���ļ� $file(yes or no)"
	read yesorno
	if [ $yesorno == "yes" ];then
		echo "`rm -rf $file`ɾ���ɹ�" 
		for i in `seq 1 10`;do
			echo $RANDOM>>$file
		done
	else
		echo "������һ���µ����ƣ��ڵ�ǰĿ¼�£�����a.txt��"
		read file1
		touch ~/yongqing.liu/$file1
		for i in `seq 1 10`;do
               	echo $RANDOM>>$file
               	done
	fi
else
		echo "��ɶҲ��ѡ����ô����ֻ���˳��ű��� bye bye"
		exit 1
fi	
echo "��ǰ�����Ϊ`sort -n $file|tail -1`"
echo "��ǰ��С��Ϊ`sort -n $file|head -1`"
echo "��ǰ�����Ϊ`sort -n $file1|tail -1`"
echo "��ǰ��С��Ϊ`sort -n $file1|head -1`"
