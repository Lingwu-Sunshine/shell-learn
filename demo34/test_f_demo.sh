#!/bin/bash

###第三十四节test命令-f参数练习###

test -f review.md && echo "这是一个md类型的文件" || echo "没有md类型文件"
