#!/bin/bash

echo "使用awk命令进行计算练习："

echo "3.2 4.8" | awk '{print ($1+$2)}'

echo "78 96" | awk '{print (78*87+$2)}'
