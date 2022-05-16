#!/bun/bash

###第五十一节函数运行脚本例子练习##3
echo "进行运行定义好的脚本"

[ -f ./define_demo.sh ] && source ./define_demo.sh || exit

##执行函数
define_test $1 $2 $3
