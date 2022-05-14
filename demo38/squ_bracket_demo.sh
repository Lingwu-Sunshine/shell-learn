#!/bin/bash

###第三十八节，中括号使用例子练习###

echo "进行输出1是否小于2的结果"

[ 1 \< 2 ] && echo yes || echo no

echo "进行输出2与本身是否相等的结果"

[ 2 \= 2 ] && echo "yes" || echo "no"

echo "进行输出2与3不等的结果"

[ 2 != 3 ] && echo yes || echo no
