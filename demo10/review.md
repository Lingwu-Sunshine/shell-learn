# 一、本地变量
1. 定义shell变量，变量名不需要加美元符号$
2. 本地变量只在用户当前shell生存期有效，当前shell关闭后，变量就会失效

# 二、变量定义
1. 变量名由：字母、数字、下划线组成，以字母和下划线做为开头
2. 变量名是严格区分大小写的

# 三、取出变量
1. 单引号：所见即所得，强引用
2. 双引号：输出引号里所有内容，识别特殊符号，弱引用
3. 无引号：连续的符号可以不加符号。但有空格时，则会有歧义，最好使用双引号
4. 反引号：引用命令执行变更，等于$()的用法 

# 四、特殊变量
```
1. $0 获取shell脚本文件名，以及脚本路径
2. $n 获取shell脚本的第n个参数，n在0-9之间，如$1,$2,$9,大于9则需要，${10}，参数以空格进行分隔
3. $# 获取执行的shell脚本后面的参数总个数
4. $* 获取shell脚本所有参数，不加引号等同于$@作用，加上引号"$*"作用是，接收所有参数为单个字符串，"$1 $2...
5. $@ 不加引号，效果同上，加上引号，是接收所有参数为独立字符串，如"$1" "$2" "$3" ....空格保留
```

# 五、面试题分享

```

 $*和$@的区别你了解吗？

$*和$@都表示传递给函数或脚本的所有参数

当$*和$@不被双引号，""包围时，它们之间没有任何区别，都是将接收到的每个能数看做一份数据，彼此之间以空格来分隔


但是当它们被双引号""包含时，就会有区别了
"$*" 会将所有的参数从整体上看做一份数据，而不是把每个参数都看做一份数据
"$@" 仍然将每个参数都看作一份数据，彼此之间是独立的

比如传递五个参数，那么对于"$*"来说，这5个参数会合并到一起形成一份数据，它们之间是无法分割的，而对于"$@"来说，这5个参数是相互独立的，它们是5份数据

如果使用echo直接输出"$*"和"$@"做对比，是看不出区别的；但如果使用for循环来逐个输出数据，立即就能看出区别来

```

