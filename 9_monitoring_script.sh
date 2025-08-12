#!/bin/bash


echo "##########################################################"
echo
echo "HTTPd service checker. Checking..."

cat /var/run/httpd/httpd.pid &> /dev/null

if [ $? -eq 0 ]
then
    echo "HTTPd is already active! Congrats!"

else
    echo "HTTPd service is not running."
    echo
    echo "Starting..."
    echo
    systemctl start httpd
    if [ $? -eq 0 ]
    then
        echo "HTTPd started successfully! Enjoy."
        systemctl status httpd
    else
        echo "HTTPd did not start sucessfully. DESTROY THE SYSTEM NOW!"
    fi
fi
echo
echo "##########################################################"
