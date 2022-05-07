#!/bin/bash
##############第十四节例子######################
########主要以统计字符长度命令为主##############



#定义字符串变量
string="我是一个字符串变量"


#wc命令使用
echo -n "使用wc -l进行统计输出:"
echo  $string | wc -l

echo -n  "使用wc -L进行统计输出"
echo $string | wc -L


#expr命令
echo -n  "使用expr进行统计输出"
expr length "${string}"


#awk命令
echo -n  "使用awk进行统计输出"

echo "${string}" | awk '{print length($0)}'

echo ""

#'#'命令使用
echo -n  "使用#进行统计输出"
echo "${#string}"
