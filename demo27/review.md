# 一、开发`nginx`存活检测脚本
1. 伪代码
	```
	1. 先定义变量，用于存储变化的值，方便后期后脚本维护
	  Nginx_version=1.7
	2. 先安装服务
	  yum install nginx-${nginx_version}
	3. 启动服务
	  systemctl start nginx
	4.修改配置文件
	5. 重启服务
	```
2. `while`语法
	```
	while 条件判断
	do
		循环体
	done
	```
3. `wget`命令使用有待补充
