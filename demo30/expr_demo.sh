#!/bin/bash

###第三十节 使用expr进行计算的例子###
echo "使用expr命令进行计算的例子"
seq -s " + " 100 | xargs expr
