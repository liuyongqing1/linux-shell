#!/bin/bash
if $1 -n ;then
	echo budui
fi
if [[ $1 == `id -n -g $1` ]]; then
	echo a
else
	echo b
fi
