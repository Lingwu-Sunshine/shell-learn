#!/bin/bash

#####第二十九节例子 检测文件名的后缀####
if expr "$1" ":" ".*\.jpg" &> /dev/null
then
	echo "这的确是以jpg结尾的文件~恭喜你"
else
	echo "这不是jpg文件！不好意思"
fi

