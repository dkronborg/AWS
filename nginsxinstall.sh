#!/bin/bash

#curl needs to be installed
#sudo apt install curl -y
#bash <(curl -Ls https://raw.githubusercontent.com/dkronborg/AWS/main/nginsxinstall.sh)
#cat <(curl -Ls https://raw.githubusercontent.com/dkronborg/AWS/main/index.html) | sudo tee /var/www/html/index.nginx-debian.html

#install nginx
sudo apt install nginx -y
#replace index.html
cat <(curl -Ls https://raw.githubusercontent.com/dkronborg/AWS/main/index.html) | sudo tee /var/www/html/index.nginx-debian.html

#check out website, code 200 ok
wget 127.0.0.1 -qO-

#moitor nginx process
#top -p `pidof -s nginx`

#look at access log
#tail -f /var/log/nginx/access.log 

#add new hard drive in virtual box
#check to see which drive has been added, look at the size to determine which one
#dmesg | grep sd
#create file system (sdb is my drive from previous command)
#sudo mkfs -t ext4 /dev/sdb
#create directory to mount to
#sudo mkdir /media/newhd
#mount
#sudo mount /dev/sdb /media/newhd
#make sure its added on startup
#sudo nano /etc/fstab
#add following line
#/dev/sdb        /media/newhd    ext4    defaults        0       2


