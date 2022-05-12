#!/bin/bash

######进行变量值设置的验证

#包括unset和readonly

#定义写入日志的文件
#write_path="./set_var_log.txt"

#定义变量
var="value"

#进行变量输出
echo "此时变量var为："$var

#进行取消变量并尝试输出
echo "取消变量并尝试输出"
unset var
echo $var

######定义只读变量，并尝试更改

readonly val1="value2"
echo "此时变量2为：$val1"

echo "接下来尝试修改val1只读变量"

#val1="njejej"

