# 一、如何检测服务状态
1. 开发`MySQL`监控脚本
	```
		端口监控		1）在服务器本地监控服务端口的常见命令netstat、ss、lsof
					2）从远端监控服务器本地端口的命令有telnet、nmap、nc

		监控服务进程或进程数	此方法适合本地服务器，注意，过滤的是进程的名字。命令为：
					ps -ef|grep nginx|wc -l
					ps -ef|grep mysql|wc -l

		在客户端模拟用户访问	使用wget或curl命令进行测试（如果监测数据库，则需要转为通过Web服务器去访问数据库），并对测试结果做三种判断
					1）利用返回值（echo $?）进行判断
					2）获取特殊字符串以进行判断（需要事先开发好程序）
					3）根据HTTP响应header的情况进行判断

		登录MySQL进行判断	通过MySQL客户端连接数据库，根据返回值或返回内容判断。例如：mysql -uroot -poldboy123 -e "select version();" &>/dev/null;echo $?
	```
