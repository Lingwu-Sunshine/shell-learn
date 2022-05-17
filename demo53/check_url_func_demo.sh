#!/bin/bash
###第五十三节检测网站是否存活脚本开发###

function usage(){
echo "usage: $0 url"
exit 1
}

#功能检测url
check_url(){

#wget --spider -q -o /dev/null --tries -T 5 $1


wget --spider -q -o /dev/null --tries=1 -T 5 $1

#echo "wget的状态码为$?,$1"
#对状态进行判断

if [ "$?" -eq 0 ]
then
	echo "$1 is running"
else
	echo "$1 is down..."
fi

}

#参考c语言开发形式，设立一个main函数，是入口函数的概念
#这也是一个普通的shell，也得调用才行
main(){
if [ $# -ne 1 ]
then
	usage
else
	check_url $1
fi


}
#常规写法如下
main $*
