#!/bin/bash
gpg --keyserver hkp://keys.gnupg.net --recv-key 7D8D0BF6
sleep 10s
gpg --fingerprint 7D8D0BF6
sleep 10s
gpg -a --export 7D8D0BF6 | apt-key add -
sleep 10s
apt update
