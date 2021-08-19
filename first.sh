#!/bin/sh

sudo apt update
sudo apt install -y nginx keepalived php7.3-fpm

sudo sysctl -w net.ipv4.ip_nonlocal_bind=1
echo "net.ipv4.ip_nonlocal_bind = 1" >> /etc/sysctl.conf

