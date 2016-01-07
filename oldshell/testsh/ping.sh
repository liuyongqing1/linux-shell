#!/bin/bash
ip=192.168.80.
for ((i=1;i<=254;i++));do
	if ping -c1 -W1 ${ip}$i&>/dev/null;then
		echo "${ip}$i ip is up"
	else
		echo "${ip}$i ip is down"
	fi
done
