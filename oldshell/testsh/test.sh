#!/bin/bash
grep 'bash' /etc/passwd &>/dev/null
if [ $? -eq 0 ] ; then
	echo "����ǰ����һ��`grep 'bash' /etc/passwd|cut -d: -f1|head -1`�û�"
else
	echo "��ǰû���û�"
fi


