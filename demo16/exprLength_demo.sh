#!/bin/bash

############expr命令的length函数统计##################

time for n in {1..10000}; do char=`seq -s ":" 100`;expr length "${char}" &>/dev/null;done
