#!/bin/bash

hosts='web01 web02 web03'

for host in $hosts
do
    ssh -i ~/.ssh/id_rsa devops@$host 'uptime'
done
