#!/bin/bash

#Install required software
echo "#############################################"
echo "#####     Installing dependencies       #####"
echo "#############################################"
sudo yum install wget zip unzip httpd -y

#Starting and enabling httpd
echo "#############################################"
echo "#####     Enabling httpd service        #####"
echo "#############################################"
sudo systemctl start httpd
sudo systemctl enable httpd


#Website setup
echo "#############################################"
echo "#####     Setting up files...           #####"
echo "#############################################"
mkdir /tmp/webfiles
cd /tmp/webfiles

echo "#############################################"
echo "#####     Installing+Extracting         #####"
echo "#############################################"
wget https://www.tooplate.com/zip-templates/2137_barista_cafe.zip
unzip 2137_barista_cafe.zip
cp -r ./2137_barista_cafe/* /var/www/html/

echo "#############################################"
echo "#####     Restart httpd service        #####"
echo "#############################################"
#Restart httpd
sudo systemctl restart httpd

#Remove temporary files
echo "#############################################"
echo "#####     Removing temp files           #####"
echo "#############################################"
rm -rf /tmp/webfiles/
