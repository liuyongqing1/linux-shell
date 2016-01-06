#!/bin/bash
file=~yongqing.liu/ran.txt
if [ -e $file ]; then
	echo "当前已经存在文件，删除文件 $file(yes or no)"
	read yesorno
	if [ $yesorno == "yes" ];then
		echo "`rm -rf $file`删除成功" 
		for i in `seq 1 10`;do
			echo $RANDOM>>$file
		done
	else
		echo "请输入一个新的名称（在当前目录下，例：a.txt）"
		read file1
		touch ~/yongqing.liu/$file1
		for i in `seq 1 10`;do
               	echo $RANDOM>>$file
               	done
	fi
else
		echo "你啥也不选，那么好我只有退出脚本了 bye bye"
		exit 1
fi	
echo "当前最大数为`sort -n $file|tail -1`"
echo "当前最小数为`sort -n $file|head -1`"
echo "当前最大数为`sort -n $file1|tail -1`"
echo "当前最小数为`sort -n $file1|head -1`"
