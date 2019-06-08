#!/bin/sh
@echo off
count="0"
while true
do
	ping -c 5 -w 10 www.baidu.com
	if [ $? != 0 ];then
		count=$((count+1))
	else
		count="0"
		sleep 30
	fi

	if [ $count = "2" ]; then
		reboot
	fi
	
done
