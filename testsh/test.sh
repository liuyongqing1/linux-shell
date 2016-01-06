#!/bin/bash
grep 'bash' /etc/passwd &>/dev/null
if [ $? -eq 0 ] ; then
	echo "您当前其中一个`grep 'bash' /etc/passwd|cut -d: -f1|head -1`用户"
else
	echo "当前没有用户"
fi


