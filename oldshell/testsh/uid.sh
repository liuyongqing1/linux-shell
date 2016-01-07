#!/bin/bash
a=`grep 'yongqing.liu' /etc/passwd|cut -d: -f3 &> /dev/null`
b=`grep 'yongqing.liu' /etc/passwd|cut -d: -f4 &> /dev/null`
if [ $a -eq $b ]; then
	echo "good luck"
else
	echo "error"
fi
