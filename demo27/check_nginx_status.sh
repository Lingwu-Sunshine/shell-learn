#!/bin/bash

####检查nginx服务是否在运行#####

CheckUrl(){
timeout=0
#相当于定义一个计数器
fails=0
success=0



#循环的检测，循环执行一些命令

while true
do
#	wget --timeout=${timeout} --tries http://pythonav.cn -q -0 /dev/null
	wget --timeout=${timeout} --tries https://www.baidu.com -q -o /dev/null

	# echo $?
	# if的条件参数， -ne是不等于的意思
	if [ $? -ne 0 ]
	then
		let fails+=1
	else
		let success+=1
	fi


	#判断当成功次数大于等于1的时候，就可以得出该网站是正确访问的
	#-ge 大于等于的意思
	if [ $success -ge 1 ]
	then
		echo "恭喜你，连网站健康在运行"
		#返回一个状态码，0
		exit 0
	fi

	

	#当错误次数大于2的时候，就警告，无法连接
	if [ ${fails} -ge 2 ]
	then
		echo "该网站无法进行连接，已经出现问题了，快去检查"
		exit 2
	fi

done

}

CheckUrl
