#!/bin/bash

#利用for循环
for var in i am yu chao, i teach you to learn linux
do
	if [ `expr length $var` -lt 5 ]
	then
		echo $var
	fi
done
