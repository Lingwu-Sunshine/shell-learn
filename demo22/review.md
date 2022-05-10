# 一、内置命令与外置命令
1. `linux`指令：什么是内置命令，什么是外置命令：
	- 内置命令：在系统启动时就加载入内存，常驻内存执行效率更高，但是占用资源，比如：`cd`
	- 外置命令：系统需要从硬盘中读取程序文件，再读入内存加载，比如：`nginx`
2. 外置命令
	- 外置命令：也称之为，自己单独下载的文件系统命令，处于`bash shell`之外的程序
	- 存放目录
		```
			#常存放于，以下目录
			/bin
			/usr/bin
			/sbin
			/usr/sbin
		```
	- 外置命令的特点：一定是开启子进程执行
3. 可以通过`linux` 的`type` 命令，验证是否为内置、外置命令
	```
	#格式如下，如cd type
	xx type
	```
4. 内置命令：
	- 内置命令不会产生子进程去执行
	- 内置命令和`shell` 是为一体的，是`shell` 的一部分，不需要单独去读取某个文件，系统启动后，就存在于内存中
5. 查看所有内置命令的命令：`compgen -b`