#!/bin/bash

####################shell子串的花式用法例子练习###################


string="111122222345678900000"


echo "sehll子串的花式用法例子练习"

echo "输出string的值:${string}"

echo "输出string变量的长度:${#string}"

echo "从第三个位置截取string的子串:${string:3}"

echo "截取第三开始长度为九的的子串:${string:3:9}"

echo "从开头开始删除最短匹配的子串1:${string#1}"

echo "从开头开始删除最长匹配的子串:${string##1}"

echo "从尾部开始删除最短匹配的子串:${string%0}"

echo "从尾部开始删除最长匹配的子串:${string%%0}"

echo "用e替换第一个的1字符:${string/1/e}"

echo "用e替换所有的1字符:${string//1/e}"

