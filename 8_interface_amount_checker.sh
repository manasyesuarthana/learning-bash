#!/bin/bash

VALUE=`ip addr show | grep -v LOOPBACK | grep -ic mtu`

if [ $VALUE -eq 1 ]
then
    echo "There is one active network interface."

elif [ $VALUE -gt 1 ]
then
    echo "There are multiple network interfaces in this device. $VALUE to be exact."
fi


