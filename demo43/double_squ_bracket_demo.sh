#!/bin/bash

###第四十三节双中括号条件判断例子练习###
echo "进行双中括号条件测试例子练习"
[[ -f /etc/hosts ]] && echo yes || echo no
