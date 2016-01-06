#!/bin/bash
a=`grep 'yongqing.liu' /etc/shadow|cut -d: -f3`
b=`grep 'yongqing.liu' /etc/shadow|cut -d: -f5`
da=`date +%s/86400|bc`
c=$[$da-$a]
if [[ $[$b-$da] -gt 7 ]]; then
	echo "good"
else
	echo "warring"
fi
