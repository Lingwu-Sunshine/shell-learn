#!/bun/bash

###进行第三十三节例子练习###

test -e "test" && echo "文件已经存在，不会再进行动作" || mkdir test && echo "进行创建文件" 
