#!/bin/bash

###第四十七节rsync起停脚本开发###
##放到/etc/init.d/rsync目录下

# -ne if 条件的不等于，$#返回传递给脚本的参数个数，$0取得脚本文件名

if [ "$#" -ne 1 ]
then
	echo "usage: $0{start|stop|restart}"
	exit 1
fi

# 当用户选择是启动reync
if [ "$1" = "start" ]
then
	/usr/bin/rsync --daemon
	sleep 2
	# 验证端口是否启动了
	if [ `netstat --tunlp|grep rsync |wc -l` -ge 1 ]
	then 
		echo "rsync is started!!"
		exit0
	fi

elif [ "$1" = "stop" ]
then
	killall rsync &>/dev/null
	sleep 2
	if [ `netstat -tunlp|grep rsync|wc -l` -eq 0 ]
	then
		echo "rsync is stopped!!"
		exit 0
	fi
elif [ "$1" = "restart" ]
then
	killall rsync
	sleep 1
	killpro=`netstat -tunlp|grep rsync|wc -l`
	/usr/bin/rsync --daemon
	sleep 1
	startpro=`netstat -tunlp|grep rsync|wc -l`
	if [ "$killpro" -eq 0 -a "$startpro" -ge 1 ]
	then
		echo "rsync is restarted!!"
		exit 0
	fi
else
	echo "usage:$0 {start|stop|restart}"
	exit 1
fi
