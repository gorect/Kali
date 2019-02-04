#!/bin/bash
## This script is for fixing the error that does not allow non root users to be able to capture packets on Wireshark
sudo dpkg-reconfigure wireshark-common
sudo gpasswd -a $USER wireshark
