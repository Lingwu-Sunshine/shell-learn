#!/bin/bash

###第三十八节 双中括号例子练习###

echo "进行输出5是否小于6的比较结果:"

[[ 5 < 6 ]] && echo "yes" || echo "no"

echo "进行输出7是否大于9的结果："

[[ 7 -gt 9 ]] && echo "yes" || echo "no"

echo "进行输出6和7不等的情况："

[[ 6 != 7 ]] && echo yes || echo no

echo "进行输出9和8不等结果，（另一种方式）"

[[ 9 -ne 8 ]] && echo yes || echo no
