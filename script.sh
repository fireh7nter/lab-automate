#!/bin/bash

useradd -m iis
usermod -aG sudo iis
chsh -s /bin/bash iis
passwd iis
echo deb http://192.168.100.5/kali/mirror/ftp.yzu.edu.tw/Linux/kali/ kali-rolling main non-free contrib > /etc/apt/sources.list
#echo deb http://kali.cs.nctu.edu.tw/kali kali-rolling main non-free contrib > /etc/apt/sources.list
#echo deb-src http://kali.cs.nctu.edu.tw/kali kali-rolling main non-free contrib > /etc/apt/sources.list
#echo  -e 'Acquire::http::Proxy "http://192.168.100.102:3142";' >> /etc/apt/apt.conf.d/00aptproxy
sudo apt-get update
sudo apt-get install virtualbox arachni adb aapt build-essential lxc libssl-dev libreoffice libffi-dev xfce4-screenshooter python-dev jd-gui -y
usermod -aG vboxusers iis
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
