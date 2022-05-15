#!/bin/bash
###第四十四节telnet命令检测MySQL使用###

echo -e "\n" | telnet 127.0.1.9 3380 2>/dev/null |grep Connected | wc -l
