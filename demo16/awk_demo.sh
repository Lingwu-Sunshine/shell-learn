#!/bin/bash

####################time命令对使用awk统计方式进行计时练习################

time for n in {1..10000};do char=`seq -s ":" 100`;echo ${char}|awk '{print length($0)}' &>/dev/null;done
