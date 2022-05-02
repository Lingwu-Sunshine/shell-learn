#!/bin/bash

####使用awk命令进行环境变量的输出

export |awk -F '[ :=]' '{print $3}'
