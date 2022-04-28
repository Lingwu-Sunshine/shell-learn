#!/bin/bash

#经常使用的几种变量引用方式小结
#包含$、${}、$()、``、()

#定义变量
demo="test"

#${vars}取出变量结果
echo ‘\${vars}取出变量demo的值:’
echo ${demo}


#$()在括号中执行命令，且拿到命令的执行结果
echo ""
echo ‘\$\(\)运行括号中的命令date，并拿到结果’
echo $(date)


#``和$()一样的效果
echo ""
echo ‘\`\`反引号使用,运行ls命令’
echo $`ls`

#()开启子shell运行
echo ""
echo ‘\(\)开子shell运行，运行pwd和ls命令’
(pwd;ls;)


#$vars取变量的值
echo ""
echo "\$取变量的值"
echo $demo
