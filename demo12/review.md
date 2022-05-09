# 一、bash基础内置命令
1. echo 打印输出语句
2. eval 用于重新运算求出参数的内容。eval可读取一连串的参数，然后再依参数本身的特性来执行
3. exec 用于调用并执行指定的命令。exec命令通常用在shell脚本程序中，可以调用其他的命令。如果在当前终端中使用命令，则当指定的命令执行完毕后立即即退出终端
4. export 命令用于将shell变量输出为环境变量，或者将shell函数输出为环境变量
5. read 用于从标准输入读取数值，read内部命令被用于从标准输入读取单行数据。这个命令可以用来读取键盘输入，当使用重定向的时候，可以读取文件中的一行数据
6. shift 命令用于对参数的移动（左移），通常用于在不知道传入参数个数的情况下依次遍历每个参数然后进行相应处理。
 

# 二、echo打印命令的相关操作
1. `-n` 不换行输出
2. `-e` 解析字符串中的特殊符号;-E为不解析特殊字符
3. `\n` 换行
4. `\r` 回车
5. `\t` 制表符 四个空格
6. `\b` 退格

# 三、eval命令
1. eval 执行多个命令


# 四、exec命令
1. 不创建子进程，执行后续命令，且执行完毕后，自动exit


# 五、shell子串的花式用法『有待补充内容』
1. `${变量}` 返回变量的值
2. `${#变量}` 返回变量长度，字符长度
3. `${变量:start}` 返回变量start数据之后的字符 
4. `${变量:start:length}` 提取start之后的length限制的字符
5. `${变量#word}` 从变量开头删除最短匹配的word子串
6. `${变量##word}` 从变量开头删除最长匹配的word子串
7. `${变量%word}` 从变量结尾删除最短的word
8. `${变量%%word}` 从变量结尾删除最长的word
9. `${变量/pattern//string}` 用`string`代替第一个匹配的`pattern`
10. `${变量//pattern/string}` 用`string`代替所有的`pattern`

 