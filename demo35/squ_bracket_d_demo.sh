#!/bin/bash

###第三十五节中括号条件测试的d参数使用练习###

dir_name="中括号d参数条件测试"
echo "中括号条件测试d参数使用"
([ -d $dir_name ] && echo "此目录己存在") || (mkdir $dir_name && echo "进行创建目录")
