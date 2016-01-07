#!/bin/bash
let sum=0
phone=`cat /root/phone.txt`
for i in $phone ;do
	echo "hello you number is $i"
#	let sum=$sum+$i
done
