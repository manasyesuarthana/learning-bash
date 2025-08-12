#!/bin/bash

#Usage: ./args_web_setup <url of template> <name of template>

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
wget $1
unzip $2.zip
cp -r ./$2/* /var/www/html

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
