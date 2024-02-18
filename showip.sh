#!/bin/bash

echo "I will show you the public IP address"
   

sleep 3

IP=$(wget https://ipinfo.io/ip -qO -)

echo "Your IP address is :$IP"



