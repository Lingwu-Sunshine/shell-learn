#!/bin/bash

#########exec命令练习#################
#exec命令：不创建子进程，执行后续命令，且执行完毕后，自动exit

#用来显示时间例子
echo "开启子线程演示"
(exec date)
