#!/bin/bash

###第四十一节 逻辑判断脚本例子###

#判断脚本目录是否存在
#path=/demo
path=`pwd`

cat <<END
 1. install lamp
 2. install lnmp
 3. exit
  please input your number:

END


read num

#根据num变量进行逻辑处理
expr $num + 1 &> /dev/null

#对上面的命令结果进行判断
#[ $? -ne 0 ] &&{
#echo "please your input 1|2|3"
#exit 1
#}


#对输入的1，2，3进行判断
[ "$num" -eq "1" ] && {

	echo "starting installing lamp .....waiting..."
	sleep 2;


	#执行lamp.sh 安装脚本了
	#对文件权限判断
	[ -x "$path/lamp.sh" ] ||{
		echo "the lamp file does not exist or can not be exec"
		exit 1
	}

	$path/lamp.sh
	exit $?

}


[ "$num" -eq "2" ] && {

        echo "starting installing lnmp .....waiting..."
        sleep 2;


        #执行lamp.sh 安装脚本了
        #对文件权限判断
        [ -x "$path/lnmp.sh" ] ||{
                echo "the lnmp file does not exist or can not be exec"
                exit 1
        }

        $path/lnmp.sh
        exit $?

}

#退出
[ "$num" -eq "3" ] &&{
echo "byebye"
exit 3

}

#限制用户输入的情况只能1，2，3
[[ ! "$num" =~ [1..3] ]] && {
echo "the num your input must be 1,2,3"
echo "你的输入有误"
exit 4

}
