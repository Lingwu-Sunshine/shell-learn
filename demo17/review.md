# 一、字符串截取介绍
1. `#` 从开头删除匹配最短
2. `##` 从开头删除匹配最的
3. `%` 从结尾删除匹配最短
4. `%%` 从结尾删除匹配最长

# 二、指定字符内容截取
1. `a*c` 区配开头为`a`，中间任意个字符，结尾为`c`的字符串
2. `a*C` 区配开头为`a`，中间任意个字符，结尾为`C`的字符串

# 三、语法
1. `${变量}`	返回变量值
2. `${#变量}`	返回变量长度，字符长度
3. `${变量:start}`	返回变量`start`数值之后的字符，且包含`start`的数字
4. `${变量:start:length}`	提取`start`之后的`length`限制的字符，例如`${name:4:1}
5. `${变量#word}	从变量开头删除最短匹配的`word`子串，例如：`${name#yu}`
6. `${变量##word}	从变量开头，删除最长匹配的`word`
7. `${变量%word}`	从变量结尾删除最短的`word`
8. `${变量%%word}`	从变量结尾开始删除最长匹配的`word`

# 四、替换
1. `${变量/pattern/string}`	用`string` 代替第一个区配的`pattern`
2. `${变量//pattern/string}`	用`string` 代替所有的`pattern`