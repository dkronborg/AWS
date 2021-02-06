#!/bin/bash

#install nginx
sudo apt install nginx -y
#check out website, code 200 ok
#wget 127.0.0.1 -qO-
#echo \<html\>dan\</html\> | sudo tee /var/www/html/index.nginx-debian.html
#cat index.html | sudo tee /var/www/html/index.nginx-debian.html
#replace index file
#sudo cp index.html /var/www/html/index.nginx-debian.html
#look at website
wget 127.0.0.1 -qO-

#moitor nginx process
top -p `pidof -s nginx`

#look at access log
tail -f /var/log/nginx/access.log 
