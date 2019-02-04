#!/bin/bash
## This script was created to fix the error that doesn't allow non su users to capture packets in wireshark.
sudo dpkg-reconfigure wireshark-common
sudo gpasswd -a $USER wireshark
