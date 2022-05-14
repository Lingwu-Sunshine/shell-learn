#!/bin/bash

###第三十九节 中括号逻辑运算符使用###

echo "进行输出中括号与运算使用的结果"

filename1="review.md"
filename2="review1.md"

echo "先定义了两个文件名变量分别为：$filename1和$filename2"

echo "进行与逻辑运算"

[ -f "$filename1" -a -f "$filename2" ] && echo "两个文件都存在" || echo "与运算条件不成立"


echo "进行或逻辑运算，有一个文件存在就输出yes，否则输出no"
[ -f "$filename1" -o -f "$filename2" ] && echo "yes" || echo "no"


#echo "使用非运算，对比较两个文件名是否一样进行取反操作，对等于进行取反"
[ "$filename1" = "$filename2" ] && echo "两个文件一样" || echo "两个文件名是不一样的"




