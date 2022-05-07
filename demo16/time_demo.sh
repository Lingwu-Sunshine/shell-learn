#!/bin/bash

####################time计时###############

 time for n in {1..10000};do char=`seq -s ":" 100`;echo ${#char} &>/dev/null;done

