#!/bin/bash

cd /etc/apt/
mv sources.list sources.listbackup
wget https://raw.github.com/gorect/Kali-Setup/master/Rolling-Repo-Fix/sources.list
#chmod?
