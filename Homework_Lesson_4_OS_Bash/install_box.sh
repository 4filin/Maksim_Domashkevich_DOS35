#!/usr/bin/env bash
echo "start"
sudo apt install -y \
 git \
 mc \
 tree
echo "finish"
# Create file with installed packages list 
 dpkg --get-selections > installed_packages.txt
 echo "end"