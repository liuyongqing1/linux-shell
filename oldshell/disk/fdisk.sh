#!/bin/bash
echo 'n
p
1

+20M
n
p
2

+512M
n
p
3

+128M
t
3
82
w' |fdisk /dev/sdb
