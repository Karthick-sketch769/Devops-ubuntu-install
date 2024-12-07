#!/bin/bash
ps aux | grep apt
sudo kill -9 2733
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/lib/dpkg/lock
sudo dpkg --configure -a
sudo apt install jenkins -y
sudo apt update && sudo apt upgrade -y
