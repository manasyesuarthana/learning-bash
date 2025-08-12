#!/bin/bash

USER='devops'

yum --help &> /dev/null

if [ $? -eq 0 ]
then
    echo "Dismantling Web on CentOS/RedHat..."
    rm -rf /var/www/html/*
    systemctl stop httpd
    systemctl disable httpd
else
    echo "Dismantling Web on Debian/Ubuntu..."
    rm -rf /var/www/html/*
    systemctl stop apache2
    systemctl disable apache2
fi
