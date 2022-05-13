#!/bin/bash

###第三十七节例子，字符串对比使用###

string1="first string"

string2="second string"

echo "字符串样相等比较使用："
[ "$string1" = "$string2" ] && echo "这两个字符串是一样的" || echo "这两个字符是不一样的"

echo "字符串不等比较使用"
[ "$string1" != "$string2" ] && echo "这两个字符串是一样的" || echo "这两个字符是不一样的"
