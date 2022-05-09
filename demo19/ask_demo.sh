#!/bin/bash

############进行:?扩展变量的练习###############
var="var1"

echo "此时变量的值为:$var,${var:?"word"}"

unset var

echo "取消变量，此时变量的值为:$var,${var:?"word"}"

echo "此时变量的值为$var"
