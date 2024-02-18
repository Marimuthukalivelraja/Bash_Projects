#!/bin/bash


echo "find your internet connection status"

sleep 2

wget -q --spider https://google.com


#find the status
if [ $? -eq 0 ]; then	
    STATUS=1;
    echo "Wifi is on "
else
    STATUS=0;
    echo "Wifi is off"
fi

#now let's play

sleep 2


if [ "$STATUS" == "1" ] ; then
	nmcli radio wifi off	
	echo "Now I turn it off"
	
elif [ "$STATUS" ==  "0" ] ; then
	nmcli radio wifi on 
	echo "Now I turn it on"
fi


