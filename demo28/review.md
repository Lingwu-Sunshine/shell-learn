# 一、`expr`命令
1. `expr`命令并不是很好用，支持基本运算、求模运算（求余）、模式匹配、简单的逻辑比较
2. `expr`命令是基于空格传参数，但是在`shell`里一些元字符都是有特殊含义的，如：`*`、`/`。使用时最好进行传义（`\*`加个斜杆），或放在双冒号中（`""`）
3. `expr` 模式匹配
	```
	expr 命令也支持模式匹配功能
	2个特殊符号
	: 冒号，计算字符串的字符数量。如：yucaho 为6个字符
	.* 任意的字符串重复0次或者多次

	语法：
	expr 字符串 ":" ".*"
	```