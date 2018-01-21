#!/bin/bash

source ./config.cfg

apt-get update;

apt-get install nginx -y;

apt-get install mysql-server -y;

add-apt-repository ppa:ondrej/php;
apt-get update;

apt-get install php7.2 -y;
apt-get install php7.2-fpm -y;
apt-get install php7.2-zip -y;
apt-get install php7.2-xsl -y;
apt-get install php7.2-mbstring -y;
apt-get install php7.2-mysql -y;
apt-get install php7.2-pgsql -y;
apt-get install php7.2-readline -y;
apt-get install php7.2-soap -y;
apt-get install php7.2-xml -y;
apt-get install php7.2-json -y;
apt-get install php7.2-intl -y;
apt-get install php7.2-imap -y;
apt-get install php7.2-gd -y;
apt-get install php7.2-bz2 -y;
apt-get install php7.2-cli -y;

wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

apt-get install memcached -y;
systemctl restart memcached;
apt-get install php7.2-memcached -y;


cp $MY_DOTFILES_DIR/dotfiles/pgdg.list /etc/apt/sources.list.d/pgdg.list;

wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | \
  apt-key add -

apt-get update;

apt-get install postgresql-9.6 -y;
apt-get install postgresql-client-9.6 -y;
apt-get install postgresql-contrib-9.6 -y;
apt-get install libpq-dev -y;
apt-get install postgresql-server-dev-9.6 -y;
