#!/bin/bash

#进行挂后台练习脚本
#使用nohup命令


#使用nohup命令将ping命令挂入后台并运行
echo "将ping百度命令挂入后台运行"
nohup ping www.baidu.com & 2> /dev/null
