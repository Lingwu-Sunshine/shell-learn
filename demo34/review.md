# 一、`test`命令讲解二
1. `-f` 参数进行判断是否为普通文件类型
2. `-d` 参数进行判断是否为目录类型
3. `-z` 参数判定字符串数据
	- `-z`希望字符串为空，就为真，否则为假
4. `-n` 参数也是判定字符串数据的，不过与`-z`反过来
	- `-n`希望字符串有内容，就为真，否则为假
5. `test`中`-n`通过引用变量名测试空字符串时，有问题出现。具体原因不清楚，有待补充。问题设备：手机termux
