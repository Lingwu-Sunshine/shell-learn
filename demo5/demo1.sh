#!/bin/bash

#历史记录命令
echo "查看历史记录"
#history

#查看能存的历史条数
echo "历史能存储条数"
echo $HISTSIZE

#显示最近的10条命令
echo "显示最近的10条命令"
history -10


#调上一次命令用!!,调某一次命令用!num


#查看历史保存的文件
echo "查看历史保存的文件$HISTFILE"
