#!/bin/bash


echo "Hello Mari!!"
sleep 2

disk_space=$(df -h)
RAM_utilization=$(free -h)
cpu_processes=$(ps aux --sort=-%cpu | awk 'NR<=10{print $0}')	

echo "disk space"
sleep 2
echo $disk_space

echo "RAM utilization"
echo $RAM_utilization

sleep 2
echo "Top CPU processes"
echo "$cpu_processes"



echo "----------THAT ALL --------"

