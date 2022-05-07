#!/bin/bash

####################time计对wc -L计数方式进行计时，并将日志写入黑洞文件

time for n in {1..10000};do char=`seq -s ":" 100`; echo ${char}|wc -L &>/dev/null; done
