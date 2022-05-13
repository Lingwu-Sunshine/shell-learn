#!/bin/bash

###第三十四节test命令z和n参数练习##3

#定义字符串
nullString=""
string="this is a string"
echo "进行输出变量"
echo $nullString
echo $string

echo "\n\r"

#test命令测试
echo "this is null string"
echo "test -z测试"
test -z $nullString && echo "this is a null string" || echo "this is a  null string test -z"

echo "test -n测试"
test -n "$nullString" && echo ok || echo no


echo "\n\rthis is not null string"
echo "test -n测试"
test -n $string && echo "this is a string test -n" || echo "this is string test -n"

echo "test -z测试"
test -z $string && echo "this is a string" || echo "this is string test -z"
