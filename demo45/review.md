# 一、使用`php`和`python`连接`mysql`
1. `php`连接`mysql`
	```
	1. 准备好php的环境依赖
		yum remove php-mysql #移除旧依赖
		yum install php-mysqlnd php

	2. 开发php连接mysql的代码，将以下代码保存到demo.php文件中
		$mysql_id=mysql_connect("localhost","root","chaoge888") or mysql_err();
		if ($mysql_id){
			echo "mysql connection successful, chaoge 666~"
		}else{
			echo mysql_error();
		}
	
	3. 运行程序命令：
		php demo.php
	```
	

2. `python`程序连接`mysql`
	```
	1. 安装python3开发环境的依赖
		yum install python3 python-devel python-pip
	
	2. 通过python的包管理工具，安装连接mysql的模块
		pip3 install pymysql

	3. 开发python连连mysql的代码，注意python是严格把控空格的，例子代码如下：
		import pymysql


		db = pymysql.connect(
		    host="localhost",
		    port=3380,
		    user='root',
		    password='chaoge888',
		    db='mysql',
		    charset='utf-8'
		)

		#操控数据库了
		cursor=db.cursor()
		cursor.execute('select version()')

		data=cursor.fetchone()

		print("数据库连接正确，该数据库版本号为：%s"%data)

		db.close()

	
