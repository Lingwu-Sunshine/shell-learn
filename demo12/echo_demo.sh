#!/bin/bash


################进行练习echo打印命令##############################

#echo中-n不换行参数的使用
echo "参数-n不换行的使用："
echo "先是不加-n参数的："
echo "1+2"
echo "=3"
echo "接下来为使用-n参数部分"
echo -n "1+2"
echo -n "=3"


#
echo ""

#
#echo中-e解析特殊字符参数的使用,-E为不解析特殊字符
echo -E "rime\tyyds\t永远的神"
echo -e "rime\tyyds\t永远的神"


echo ""
#
#换行：\n；制表符：\t；退格：\b的使用；回车：\r
echo -E "rime:\n由辰辰大佬开发的开源输入法\t不同平台有不同的版本；\b（进行了退格操作）"
echo "rime:\n由辰辰大佬开发的开源输入法\t不同平台有不同的版本；\b（进行了退格操作）"
echo "下面为回车正则的练习"
echo "不回车的内容为：rime yyds"
echo -E "回车的内容为：\\rrime yyds"
echo "回车的内容为：\rrime yyds"

