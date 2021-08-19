#!/bin/sh

sudo mv /home/vagrant/nat-switch /usr/local/bin/nat-switch
sudo mv /home/vagrant/keepalived.conf /etc/keepalived/keepalived.conf
if [ -f /home/vagrant/web1.conf ]
then
sudo mv /home/vagrant/web1.conf /etc/nginx/sites-enabled/web1.conf
fi
if [ -f /home/vagrant/web2.conf ]
then
sudo mv /home/vagrant/web2.conf /etc/nginx/sites-enabled/web2.conf
fi
sudo rm /etc/nginx/sites-enabled/default
sudo mv /home/vagrant/index.php /var/www/html/index.php

sudo systemctl restart nginx
sudo systemctl restart php7.3-fpm
sudo systemctl enable --now keepalived
