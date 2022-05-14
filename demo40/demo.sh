#!/bin/bash

###第四十节条件判断例子练习###
####对输入的数字进行判断######


read -p "please your input a number(1 or 2):" var

[ "$var" -eq "1" ] && {
	echo "你刚刚输入的数字为$var"
exit 0
}

[ "$var" = "2" ] && {
	echo "你刚刚输入的数字为$var"
exit 0
}

if [ "$var" != "1" -a "$var" -ne "2" ]
then
	echo "你输入的数字不是1也不是2"
	exit 1
fi


