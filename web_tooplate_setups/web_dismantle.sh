#!/bin/bash

rm -rf /tmp/webfiles/
rm -rf /var/www/html/*
systemctl stop httpd
systemctl disable httpd

