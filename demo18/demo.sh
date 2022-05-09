#!/bin/bash

##################第十八节例子，批量更改文件名##################

##################先进行批量创建文件############################

touch demo18_{1..10}_finished.jpg

touch demo18_{1..10}_finished.png

#进行显示当前目前下的文件
ls

echo "对jpg后缀文件进行文件名的修改"
#运用for循环和反引号进行批量修改操作

for file_name in `ls *fin*jpg`
do
	mv $file_name `echo ${file_name//_finished/}`
done

ls
