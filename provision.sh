#!/bin/bash

apt-get -y update
apt-get -y install nginx



dpkg -s npm &>/dev/null || {
  apt-get -y install nodejs npm
  ln -s /usr/bin/nodejs /usr/bin/node
}

command -v hubot &>/dev/null || {
  npm install -g hubot coffee-script
}

rm -rf /usr/share/nginx/html
ln -s /vagrant/html /usr/share/nginx/html

service nginx start
