#!/bin/bash

##########################子shell嵌套使用练习####################

echo "一层嵌套"
(ls;pwd;echo $BASH_SUBSHELL)

echo "多层嵌套"
(echo "第一层$BASH_SUBSHELL";(echo "第二层$BASH_SUBSHELL";(echo "第三层$BASH_SUBSHELL")))
