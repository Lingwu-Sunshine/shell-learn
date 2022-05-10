#!/bin/bash

######################进行练习第二十二节例子#################3

echo "使用type命令验证cd是否为内置命令"
type cd

echo "接着是验证vim命令"
type vim 

echo "查看所有的内置命令compgen -b"
compgen -b
