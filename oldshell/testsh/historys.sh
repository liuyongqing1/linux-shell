#!/bin/bash
his=`history |tail -1|cut -d' ' -f3`
if [ $his > 1000 ];then
	echo "�����Ѿ����ˣ��뼰ʱ���"
else
	echo "���û��������������"
fi
# [ $his -gt 1000 ] && echo "�����Ѿ�����" || echo "����û��" 
