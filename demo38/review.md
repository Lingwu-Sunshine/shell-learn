# 一、数值比较符号
1. 基础语法
	```
	在[]以及test中使用的比较符号	在(())和[[]]中使用的比较符号	说明
		-eq			==或=				相等，全拼为equal
		-ne			!=				不相等，全拼为not equal
		-gt			>				大于，全拼为greater than
		-ge			>=				大于等于，全拼为greater equal
		-lt			<				小于，全拼为less than
		-le			<=				小于等于，全拼为less equal
2. 在中括号， 以及`test`中数值测试的用法
	- 在中括号中，使用数学比较符号，要进行转义操作
3. `test`和`[]`语法中，支持`-eq`此类写法，以及支持`<`、`>`、`=`、`!=`
4. 双中括号
	- 双中括号是对单括号的补充，双中括号还支持正则处理
	- 在双中括号中，使用数学比较符号，就不需要进行转义操作了
	- 在工作中，用的最多就是中括号，双中括号属于特殊场景的扩展语法，并且双中括号也是支持`< > -eq -lt =`
