#!/bin/bash

#进行不同执行方式的验证，
#不同的执行方式，主要有两种，在当前shell中执行（source和.）以及开起子shell执行（bash和sh）

#定义查看进程树变量
pstree=`pstree`

#进行输出显示
echo "当前所在进程如下：$pstree"
