#!/bin/bash
cd ~/Downloads
rm openstego*
wget https://github.com/syvaidya/openstego/releases/download/openstego-0.7.3/openstego_0.7.3-1_i386.deb
dpkg -i openstego_0.7.3-1_i386.deb
