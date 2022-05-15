#!/bin/bash

###第四十四节netstat检测MySQL命令###


netstat -tunlp|grep mysql | wc -l
