#!/bin/bash
###第五十四节rsync脚本开发例子###

lsb_functions="/lib/lsb/init-functions"
if test -f $lsb_functions ; then
        . $lsb_functions
else

        init_functions="/etc/init.d/functions"
        if test -f init_functions; then
                . $init_functions
        fi

        log_success_msg(){
                echo " SUCCESS! $@"
        }
        log_failure_msg(){
                echo "ERROR! $@"
        }



####开发rsync脚本###
function usage(){
echo "usage $0 {start|stop|restart}"
exit 1
}

#开发start功能
function start(){
/usr/bin/rsync --daemon
sleep 1
if [ `netstat -tunlp|grep rsync|wc -l` -ge "1" ]
then
	log_success_msg "rsyncd is started"

else
	log_failure_msg "rsync is not started!"
fi

}

function restart(){

echo "rsync is restart!"
}


#开发c语言风格的脚本，更专业，更美观，更容易维护

function main(){
if [ "$#" -ne 1]
then
	usage
fi

if [ "$1" = "start" ]
then
	start

elif [ "$1" = "stop" ]
then
	stop
elif [ "$1" = "restart" ]
then
sleep 1
	restart
sleep 1
else
	usage
fi


}


#函数入口
main $*

