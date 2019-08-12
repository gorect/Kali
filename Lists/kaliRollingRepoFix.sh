#!/bin/bash
sed "/deb https://http.kali.org/kali kali-rolling main non-free contrib/d" </etc/apt/sources.list> /etc/apt/sources.fixed
mv -f /etc/apt/sources.fixed /etc/apt/sources.list
echo "deb https://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list
echo "apt-get update -y"
apt-get update -y
