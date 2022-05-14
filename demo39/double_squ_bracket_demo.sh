#!/bin/bash

###第三十九节双中括号，条件判断练习###

echo "进行双中括号条件判断练习："

a=" "
b="yuchao"

[[ -n "$a" && "$b" = "$a" ]] && echo yes || echo no

echo "对上述进行取反操作"
[[ -n "$a" && ! "$b" = "$a" ]] && echo yes || echo no

echo "另一种取反方式"
[[ -n "$a" && "$b" != "$a" ]] && echo yes || echo no


