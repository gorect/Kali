#!/bin/bash
file='/var/spool/cron/crontabs/root'
echo "msfdb init" >> $file
cat $file
