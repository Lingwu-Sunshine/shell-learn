#!/bin/bash
###第四十四节使用ps命令检测MySQL例子练习###

ps -ef|grep mysql|grep -v grep|wc -l
