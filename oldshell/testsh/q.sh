#!/bin/bash
if [ $# -lt 1 ];then
	echo error
	exit 10
fi
if [ $1 = 'q' ] || [ $1 = 'Q' ] || [ $1 = 'quit' ] ||[ $1 = ''Quit ]; then
	echo quiting
else
	echo lala
fi 
