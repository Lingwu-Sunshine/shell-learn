#!/bin/bash

#用于父子shell变量的验证




echo "开启子shell，并进行输出"
(
#sh
son_var="son_var_value"

show_pstree=`pstree`

echo "进行子变量输出$son_var"


echo "进行输出进程树$show_pstree"

#exit
)
