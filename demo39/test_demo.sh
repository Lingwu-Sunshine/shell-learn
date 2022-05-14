#!/bin/bash

###第三十九节双小括号，条件判断练习###

echo "进行双中括号条件判断练习："

a=" "
b="yuchao"

test -n "$a" && echo yes || echo no

echo "对上述进行取反操作"
test -n "$a" && echo yes || echo no

echo "另一种取反方式"
test -n "$a" && echo yes || echo no


