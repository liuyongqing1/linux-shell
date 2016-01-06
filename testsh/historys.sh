#!/bin/bash
his=`history |tail -1|cut -d' ' -f3`
if [ $his > 1000 ];then
	echo "命令已经满了，请及时清除"
else
	echo "命令还没有满你可以随便用"
fi
# [ $his -gt 1000 ] && echo "命令已经满了" || echo "命令没满" 
