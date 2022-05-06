# 一、介绍
1. 自己学习shell编程时的笔记，包含代码和随堂练习



# 二、创建编辑时间：
▂▂▂▂▂▂▂▂
日期: 2022年04月25日🗓️
农历: 虎🐅壬寅年三月廿五
时间: 18:32:22🕡
星期: 周一

# 三、代码记录
## （一）、第一天代码
1.2022.04.27 21:02 
2. 添加第二节例子 终端输出echo 语句使用

## （二）、第一次代码
1. 2022.04.27 23:29
2. 添加第三节例子，脚本shebang的应用

## （三）、第三次代码
1. 2022.04.28 13:20
2. 添加第二十三节，随堂练习代码，包含变量引用的常见格式区分

## （四）、第四次代码
1. 2022.04.28 21:45
2. 添加第五节例子，和对历史$HISTCONTROL记录的方式进行补充

## （五）、第五次代码
1. 2022.05.02 10:41
2. 添加第六节例子，对全局变量和局部变量以及父子shell进行验证

## （六）、第六次代码
1. 2022.05.02 19:21
2. 添加第七节例子，不同的执行方式【source（.）和bash（sh），前者运行会保留到当前shell中，后者是开启子shell执行并不会保存到当前shell中】，和pstree查看进程树命令的使用，以及反引号的运用【保留命令执行后的结果】

## （七）、第七次代码
1. 2022.05.02 22:32
2. 添加第八节例子，包含环境查看命令set、env、declare、export，和只读变量readonly设置
3. set和declare都输出所有变量，env用于输出环境变量，export显示和设置环境变量
4. readonly变量只有当shell进程结束时，才会失效

## （八）、第八次代码
1. 2022.05.03 13:27
2. 添加第九节例子，包含一行多命令执行、环境变量加载顺序、使用awk和export命令进行环境变量的输出

## （九）、进行错误验证
1. 2022年5月3日 16:52
2. 对变量定义时的单引号方式进行验证，还read -p参数使用
3. 结果：
	变量单引号已解决，原因：因输入法原因打成中文单引号加代码没报错
	read -p 参数使用，中蓝桥云环境并不能使用，原因也有可能是zsh的shell环境，待验证

## （十）、 第九次代码
1. 2020年5月5日 13:19
2. 添加第十节代码例子，包含变量定义和特殊变量使用，`$n,$*,$@`

## （十一）、第十次代码
1. 2022.05.06 14:57
2. 添加第十一节代码例子，包含挂后台运行命令nohup，杀死后台运行程序指令`jobs`和`kill -9`
3. 以及对写入黑洞文件命令的相关补充和两种重定符的介绍

## （十二）、第十一次代码
1. 2020.05.07 12:14
2. 添加第十二节代码例子，包含echo、eval、exec、shell子串花式用法
3. shell子串花式用法有待补充
