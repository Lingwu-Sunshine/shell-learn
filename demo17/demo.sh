#!/bin/bash

###########第十七节例子字符串的删除替换使用###############

#############字符串截取操作###############
string1="i am string"

echo "输出字符串1的长度${#string1}"

echo "进行输出字符串1:$string1"

echo "截取字符串，从2号位开始：${string1:2}"

echo "截取字符串，从3开始长度为5的字符串：${string1:3:5}"


###########字符匹配操作###################

string2="abcABC123ABCabc"

echo "输出字符串2:${string2}"

echo "进行字符串的删除操作，从开头开始删除，删除一个a-c:${string2#a*c}"

echo "进行字符串的删除操作，从开头开始删除，删除多个a-c:${string2##a*c}"

echo "进行字符串的删除操作，从结尾开始删除，删除一个a-c:${string2%a*c}"

echo "进行字符串的删除操作，从开头开始删除，删除多个a-c:${string2%%a*c}"

echo "进行字符串的删除操作，从开头开始删除，删除一个a-C:${string2#a*C}"


#############进行字符串替换操作################

string3="hello,man, i am you brother"

echo "进行输出字符串3:$string3"

echo "进行单个替换输出：${string3/man/boy}"

echo "进行多个替换输出:${string3//o/O}"
