#!/bin/bash

###第四十三节内存检测脚本例子练习###

FreeMem=`free -m | awk 'NR==2 {print $NF}'`
CHAR5="current memorybis $FreeMem"

if [ "$FreeMem" -lt "2100" ]
then
	echo $CHAR5 | tee ./log.txt
	echo "内存不足，快来进行维修"
fi
