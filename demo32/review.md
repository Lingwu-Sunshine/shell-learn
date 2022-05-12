# 一、`shell` 测试语法参数解释
1. 主要：
	- 得出真，假的概念
	- `shell`提供条件测试语法
	- `test`命令
	- `[]`中括号判断
2. 条件测试常用语法说明：
	- 语法1: `test < 测试表达式 >`	说明：这是利用`test` 命令进行条件测试表达式的方法。`test` 命令和“< 测试表达式 >”之间至少有一个空格
	- 语法2: `[ < 测试表达式 > ]`	说明：这是通过`[]`（单中括号）进行条件测试表达式的方法，和`test` 命令的用法相同。`[]`的边界和内容之间至少有一个空格
	- 语法3: [[ < 测试表达式 > ]]	说明：这是通过`[[]]`(双中括号)进行条件测试表达式的方法，是比`test` 和`[]` 更新的语法格式。`[[]]`的边界和内容之间至少有一个空格
	- 语法4: `((< 测试表达式 >))`	说明：这是能过`(())`(双小括号)进行条件测试表达式的方法，一般用于`if` 语句里。`(())`(双小括号) 两端不需要有空格
3. `test` 语法参数大全
	```
	语法

	1. 针对文件类型判断真假
	-e 该『文件名』的文件是否存在？（常用）
	-f 该『文件名』是否为文件（file）？（常用）
	-d 该『文件名』是否为目录（directory）？（常用）
	-b 该『文件名』是否为一个block device 装置？
	-c 该『文件名』是否为一个character device 装置？
	-S 该『文件名』是否为一个Socket 文件？
	-P 该『文件名』是否为一个FIFO（pipe）文件？
	-L 该『文件名』是否为一个连结档？

	2. 关于文件的权限侦测，如 test -r filename
	-r 侦测该文件名是否具有『可读』的属性？
	-w 侦测该文件名是否具有『可写』的属性？
	-x 侦测该文件名是否具有『可执行』的属性？
	-u 侦测该文件名是否具有『SUID』的属性？
	-g 侦测该文件名是否具有『SGID』的属性？
	-k 侦测该文件名是否具有『Sticky bit』的属性？
	-s 侦测该文件名是否具为『非空白文件』？

	3. 两个文件之间的比较，如：test file1 -nt file2
	-nt (newer than)判断file1 是否比 file2 新
	-ot （older than）判断文件file1 是否比 file2 旧
	-ef 判断file1 与 file2 是否为同一文件，可用在判断hard link 的判定上。主要意义在判定，两个文件是否均指向同一个inode

	4. 关于两个整数之间的判定，例如：test n1 -eq n2
	#针对变量数值的大小比较判断
	-eq 两数值相等 （equal）
	-ne 两数值不等 （not equal）
	-gt n1 大于 n2 （greater than）
	-lt n1 小于 n2 （less than）
	-ge n1 大于等于n2 （greater than or equal）
	-le n1 小于等于 n2 （less than or equal）

	5. 判定字符串数据
	test -z string 判定字符串是否为0？ 若string为空字符串，则为true
	test -n string 判定字符串是否非为0？若string为空字符串，则为false。
	注：-n 亦可省略
	test str1 = str2 判定str1是否等于str2，若相等，则回传true
	test str1 != str2 判定str1是否不等于str2，若相等，则回传false

	6. 多重条件判定，例如：test -r filename -a -x filename
	-a （and）两状况同时成立！例如 test -r file -a -x file，则file同时具有r与x权限时，才回传truro
	-o （or）两状况任何一个成立！例如test -r file -o -x file，则file具有r或x权限时，才回传true
	! 反相状态，如：test ! -x file，当file不具有x时，回传true


	```
