#!/bin/bash

#Variables
PACKAGES="wget zip unzip"
SERVICE="httpd"
ARTIFACT="2137_barista_cafe"
TEMP="/tmp/webfiles"

#Install required software
echo "#############################################"
echo "#####     Installing dependencies       #####"
echo "#############################################"
sudo yum install $PACKAGES -y

#Starting and enabling httpd
echo "#############################################"
echo "#####     Enabling httpd service        #####"
echo "#############################################"
sudo systemctl start $SERVICE
sudo systemctl enable $SERVICE


#Website setup
echo "#############################################"
echo "#####     Setting up files...           #####"
echo "#############################################"
mkdir $TEMP
cd $TEMP

echo "#############################################"
echo "#####     Installing+Extracting         #####"
echo "#############################################"
wget https://www.tooplate.com/zip-templates/$ARTIFACT.zip
unzip $ARTIFACT.zip
cp -r ./$ARTIFACT/* /var/www/html/

echo "#############################################"
echo "#####     Restart httpd service        #####"
echo "#############################################"
#Restart httpd
sudo systemctl restart $SERVICE
sudo systemctl status $SERVICE
#Remove temporary files
echo "#############################################"
echo "#####     Removing temp files           #####"
echo "#############################################"
rm -rf $TEMP
