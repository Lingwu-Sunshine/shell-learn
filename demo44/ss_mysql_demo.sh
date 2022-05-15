#!/bin/bash

###第四十四节ss命令检测mysql例子###

ss -tunlp|grep mysql | wc -l
