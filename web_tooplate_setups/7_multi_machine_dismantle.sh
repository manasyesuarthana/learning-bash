#!/bin/bash

USER='devops'
hosts='web01 web02 web03'
DISMANTLE_SCRIPT='6_multi_os_dismantle.sh'

echo "Dismantling all web instances from all hosts..."

for host in $hosts
do
    scp ./$DISMANTLE_SCRIPT $USER@$host:/tmp
    ssh -i ~/.ssh/id_rsa $USER@$host sudo /tmp/$DISMANTLE_SCRIPT
    ssh -i ~/.ssh/id_rsa $USER@$host rm -rf /tmp/$DISMANTLE_SCRIPT
done

echo "Dismantling done..."

