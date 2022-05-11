#!/bin/bash

######第二十五节脚本开发例子####

printf_user_tip(){
#进行用户输入信息错误时的提示
	printf "Please input an integer"
	exit 1

}

#进行读取输入的第一个数字
read -p "Please input youre first number:" firstnumber


#对输入的数字进行判断，对数字进行替换成空符
#-n 参数：条件不为空则成立；条件为空则不成立
if [ -n "`echo $firstnumber|sed 's/[0-9]//g'`" ]
then
	printf_user_tip
fi

#进行读取运算符
read -p "Please input your operator:" operator

if [ "${operator}" != "+" ] && [ "${operator}" != "-" ] && [ "${operator}" != "*" ] && [ "${operator}" != "/" ]
then
	echo "只允许输入+|-|*|/"
	exit 2
fi

#进行读取输入的第二个数字
read -p "Please input youre second number:" secondnumber


#对输入的数字进行判断，对数字进行替换成空符
#-n 参数：条件不为空则成立；条件为空则不成立
if [ -n "`echo $secondnumber|sed 's/[0-9]//g'`" ]
then
        printf_user_tip
fi


#最后进行数值计算，种用双小括号计算
echo "${firstnumber}${operator}${secondnumber}的结果是:$((${firstnumber}${operator}${secondnumber}))"
