#!/bin/bash

#curl needs to be installed
#sudo apt install curl -y
#bash <(curl -Ls https://raw.githubusercontent.com/dkronborg/AWS/main/nginsxinstall.sh)
#cat <(curl -Ls https://raw.githubusercontent.com/dkronborg/AWS/main/index.html) | sudo tee /var/www/html/index.nginx-debian.html

#install nginx
sudo apt install nginx -y
#check out website, code 200 ok
wget 127.0.0.1 -qO-

#moitor nginx process
#top -p `pidof -s nginx`

#look at access log
#tail -f /var/log/nginx/access.log 
