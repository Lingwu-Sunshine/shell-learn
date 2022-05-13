#!/bin/bash

###第三十四节test命令-d参数练习###

test -d "test" && echo "存在一个目录" || echo "没有对应的目录进行创建目录"&& mkdir "test"
