# 一、脚本的执行方式与父子`shell`
1. `source`和`.`，执行脚本，只在当前`shell`环境中执行生效
2. 指定`bash`和`sh`解释器运行脚本，是开启`subshell`（子线程），开启子`shell`运行脚本命令
3. `./script`，是通过指定的`shebang`解释器来运行，也是开启`subshell`（子线程）运行命令

# 二、父子`shell`的概念
1. 可通过`pstree`查看当前`shell` 环境
2. `ps`进程管理命令查看
	```
	ps -ef #查看进程
	-f 显示UID,PID,PPID
	-e 列出所有进程信息，如同-A选项，option

	#通过一条命令，检查父子shell的关系
	ps -ef --forest
	```
3. 父`shell`通过发送`bash`命令来创建子`shell`，子`shell`可以通过`exit`来退出当前`shell`环境。父子`shell`之间互相独立，不受影响
4. 创建进程列表（创建shell列表执行命令）
	- 列表，是指被包括起来的数据
	- `shell`的进程理念，需要使用`()`小括号，加上小括号，就是开启子`shell`运行命令
5. 检查是否开启子`shell`运行命令
	```
		`linux`默认有关的`shell`变量
		#该变量的值特点，如果是0，就是在当前shell环境中执行的，否则就是开辟子shell执行
		BASH_SUBSHELL

	```
6. 子`shell`嵌套运行
	- 还可以使用`()`括号嵌套
	- 利用括号，开启子`shell`的理念，以及检查，在`shell`脚本开发中，经常会用到子`shell`进行多线程的处理，提高程序并发执行效率
