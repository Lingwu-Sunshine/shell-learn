#!/bin/bash

###第三十一节read命令例子练习###

read -t 5 -p "请输入你的名字：" your_name

read -t 5 -p "请输入你的年龄:" your_age

echo "你刚刚输入的信息为：\n\r名字：$your_name,年龄：$your_age"
