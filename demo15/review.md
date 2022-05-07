# 一、多种统计长度命令的使用
1. `wc`命令
	- 格式：
	```
	wc -l #统计行数
	wc -L #找最长的那一行，并且输出它的个数
	```
	- 例子
	```
	echo $string | wc -l #输出并统计行数
	echo $string | wc -L #输出并统计最长行数中的个数
	```
2. `expr`命令
	- 格式
	```
	expr length xxx #统计长度
	```
	- 例子
	```
	expr length "${string}"
	```

3. `awk`命令字数统计，length函数
	- 例子
	```
	echo "${string}" | awk '{print length($0)}'
	```
4. `#`统计最长的命令
	- 格式
	```
	echo ${#string}
	```
