#!/bin/bash

# The crontab is a place where users can schedule commands
# To edit a user's crontab, simply type in:
crontab -e

# Syntax: MM HH DOM mm DoW --> Minute(of hour) Hour(of day) Day_of_Month month Day_of week
# Example: 30 20 1 * 1-5 cat /etc/passwd --> will run "cat /etc/passwd" at 20:30 at everyday December
# Example 2: * * * * * ls --> will run "ls" every minute, hour, everyday, every month, every day of the week

# Real Example
* * * * * /root/bash_scripting/11_monitoring_script.sh &> /var/logs/monit_httpd.log
