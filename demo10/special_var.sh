#!/bin/bash

#进行输入参数时的提示
echo "请输入三个参数"

echo "进行输出第0个，脚本名和路径，也就是\$0：$0"

echo "进行输出第1个参数，\$1:$1"

echo "进行输出第2个参数，\$2:$2"

echo "进行输出第3个参数，\$1:$3"


echo ""

#进行输出参数总个数
echo "参数的总个数为：$#"



####$*和$@相同之处，不用双引号括起来
echo "进行\$*输出"$*
echo "进行\$@输出"$@
echo ""


#######通过for循环进行$*和$@的区分

echo "进行\$*和\$@的区分"

echo "先进行\$*的区分"

for var in "$*"
do
	echo "$var"
done	


echo "这里为\$@的区分"
for var in "$@"
do
	echo "$var"
done
