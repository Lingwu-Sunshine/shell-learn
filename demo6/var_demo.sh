#!/bin/bash


#变量命令
#双引号变量
 var1="var1value"
#单引号变量
 var2=‘var2value’
#大写变量
 Var3="var3value"
#单引号引用变量
 var4=‘$var1’
#双引号引用变量
 var5="$Var3"

#将变量进行输出
echo "将双引号变量1进行输出var1=$var1"
echo "将单引号变量2进行输出var2=$var2"
echo "将大写变量进行输出以验证区分大小写Var3=$Var3"
echo "单引号变量4引用变量1进行输出var4="$var4
echo "双引号变量5引用变量3进行输出var5=$var5"


#历史记录数目全局变量HISTSIZE

echo "进行输出全局变量HISTSIZE:$HISTSIZE "

#特殊变量，这里为状态变量#?

echo "进行输出状态变量$?"

#进行输出参数变量

echo "输出\$0：$0"
echo "不加括号输出\$1：$1"
echo "加圆括号进行输出\$(1)：$(1)"
echo "加花括号进行输出\${1}:${1}"
