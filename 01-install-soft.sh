#!/bin/bash

source ./config.cfg

apt-get update;

apt-get install openjdk-8-jdk -y;

apt-get install nginx -y;

apt-get install software-properties-common;

add-apt-repository ppa:ondrej/php;
apt-get update;

apt-get install php7.2 -y;
apt-get install php7.2-fpm -y;
apt-get install php7.2-zip -y;
apt-get install php7.2-xsl -y;
apt-get install php7.2-mbstring -y;
apt-get install php7.2-pgsql -y;
apt-get install php7.2-readline -y;
apt-get install php7.2-xml -y;
apt-get install php7.2-json -y;
apt-get install php7.2-intl -y;
apt-get install php7.2-imap -y;
apt-get install php7.2-gd -y;
apt-get install php7.2-bz2 -y;
apt-get install php7.2-cli -y;

apt-get install memcached -y;
systemctl restart memcached;
apt-get install php7.2-memcached -y;


echo 'deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main' >> /etc/apt/sources.list.d/pgdg.list;

wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | \
  apt-key add -

apt-get update;

apt-get install libpq-dev -y;
apt-get install postgresql-10 -y;
apt-get install postgresql-client-10 -y;
apt-get install postgresql-contrib-10 -y;
apt-get install postgresql-server-dev-10 -y;
