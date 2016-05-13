#!/bin/bash

apt-get -y update
apt-get -y install nginx

rm -rf /usr/share/nginx/html
ln -s /vagrant/html /usr/share/nginx/html

service nginx start
