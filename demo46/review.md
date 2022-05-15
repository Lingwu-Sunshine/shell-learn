# 一、`shell`脚本检测`mysql`服务状态
1. 通过多种方案来实现
	```
		echo "----方法1"
		if [ `netstat -tunlp|grep mysql | wc-l` = "1" ]
		then
			echo "mysql is running"
		else 
			echo "mysql is stopped"
			systemctl start mariadb
		fi


		echo "----方法2"

		if [ `ss -tunlp|grep mysql | wc -l` -eq "1" ]
		then
			echo "mysql is running"
		else 
			echo "mysql is stopped"
			systemctl start mariadb
		fi


		echo "----方法3"

		if [ `lsof -i tcp:3380|wc -l` -gt "0" ]
		then
			echo "mysql is running"
		else 
			echo "mysql is stopped"
			systemctl start mariadb
		fi


		echo "----方法4"
		#开发php脚本的执行
		#先执行该php读取mysql的脚本
		#根据该命令的返回值，判断mysql是否存活
		php /shell_program/scripts/mysql_test.php

		if [ "$?" -eq 0 ]
		then
			echo "mysql is running"
		else
			echo "mysql is stopped"
			systemctl start mariadb
		fi


		echo "----方法5"

		python3 /shell_program/scripts/test_python_mysql.py

		if [ "$?" -eq 0 ]
		then
			echo "mysql is running"
		else
			echo "mysql is stopped"
			systemctl start mariadb
		fi
	```
