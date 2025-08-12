#!/bin/bash

hosts='web01 web02 web03'
USER='devops'
SETUP_SCRIPT='4_multi_os_web_setup.sh'

echo "Deploying web on web01, web02, web03..."
for host in $hosts
do
    scp ./$SETUP_SCRIPT $USER@$host:/tmp/
    ssh -i ~/.ssh/id_rsa $USER@$host sudo /tmp/$SETUP_SCRIPT
    ssh -i ~/.ssh/id_rsa $USER@$host rm -rf /tmp/$SETUP_SCRIPT
done

echo "Execution Done. Websites Deployed..."
