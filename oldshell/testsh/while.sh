#!/bin/bash
ip=192.168.80.
ip2=`seq 1 254`
while [ $ip2 -eq 254 ] ;do
	if ping -c1 -W1 ${ip}$ip2&>/dev/null;then
                echo "${ip}$ip2 ip is up"
        else
                echo "${ip}$ip2 ip is down"
        fi
done
