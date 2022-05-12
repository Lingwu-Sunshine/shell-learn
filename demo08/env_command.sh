#!/bin/bash

#######使用查看系统变量命令并生日志文件######

#定义生成日志时的回车效果
enter="\n\r"

#定义生成日志文件路径
log_path="./env_command_log.txt"

#定义写入字符串
write_string=""
set_string=""
env_string=""

#全局命令set和declare
set_string=$"全局变量set和declare：$enter set:$enter `set` $enter $enter  declare: $enter `declare`"

#env和export命令
env_string=$"全局变量env和export：$enter env:$enter `env` $enter $enter  export: $enter `export`"

#进行将执行的命令结果写入到文件
write_string=$set_string$enter$enter$enter$env_string
echo $write_string > $log_path
