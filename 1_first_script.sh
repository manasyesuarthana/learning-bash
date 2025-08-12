#!/bin/bash

#My first ever bash script, not really first but the first one of the course.
echo "Hello root!"

echo "=== HERE ARE SOME INFO OF THE SYSTEM ==="

#Prints the system uptime
echo "#############################################"
echo "System uptime: "
uptime
echo "\n"

#Prints memory utilization
echo "#############################################"
echo "Memory usage: "
free -m
echo "\n"

#Prints Disk Utilzation
echo "#############################################"
echo "Disk usage: "
df -h
echo "\n"

