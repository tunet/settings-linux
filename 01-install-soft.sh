#!/bin/bash

source ./config.cfg

sudo apt-get update;

#sudo apt-get install mercurial -y;

sudo apt-get install nginx -y;

sudo apt-get install mysql-server -y;

#sudo apt-get install apache2 -y;

sudo add-apt-repository ppa:ondrej/php;
sudo apt-get update;

sudo apt-get install php7.1 -y;
sudo apt-get install php7.1-fpm -y;
sudo apt-get install php7.1-zip -y;
sudo apt-get install php7.1-xsl -y;
sudo apt-get install php7.1-mbstring -y;
sudo apt-get install php7.1-mcrypt -y;
sudo apt-get install php7.1-mysql -y;
sudo apt-get install php7.1-pgsql -y;
sudo apt-get install php7.1-readline -y;
sudo apt-get install php7.1-soap -y;
sudo apt-get install php7.1-xml -y;
sudo apt-get install php7.1-json -y;
sudo apt-get install php7.1-intl -y;
sudo apt-get install php7.1-imap -y;
sudo apt-get install php7.1-gd -y;
sudo apt-get install php7.1-bz2 -y;
sudo apt-get install php7.1-cli -y;
sudo apt-get install php7.1-dev -y;
sudo apt-get install php7.1-xdebug -y;

sudo apt-get install php7.2 -y;
sudo apt-get install php7.2-fpm -y;
sudo apt-get install php7.2-zip -y;
sudo apt-get install php7.2-xsl -y;
sudo apt-get install php7.2-mbstring -y;
sudo apt-get install php7.2-mysql -y;
sudo apt-get install php7.2-pgsql -y;
sudo apt-get install php7.2-readline -y;
sudo apt-get install php7.2-soap -y;
sudo apt-get install php7.2-xml -y;
sudo apt-get install php7.2-json -y;
sudo apt-get install php7.2-intl -y;
sudo apt-get install php7.2-imap -y;
sudo apt-get install php7.2-gd -y;
sudo apt-get install php7.2-bz2 -y;
sudo apt-get install php7.2-cli -y;
sudo apt-get install php7.2-dev -y;



#sudo apt-get install libapache2-mod-php -y;

wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

#sudo add-apt-repository ppa:longsleep/golang-backports;
#sudo apt-get update;
#sudo apt-get install golang-go;



sudo apt-get install memcached -y;
sudo systemctl restart memcached;
sudo apt-get install php7.2-memcached -y;


sudo cp $MY_DOTFILES_DIR/dotfiles/pgdg.list /etc/apt/sources.list.d/pgdg.list;

wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | \
  sudo apt-key add -

sudo apt-get update;

sudo apt-get install postgresql-9.6 -y;
sudo apt-get install postgresql-client-9.6 -y;
sudo apt-get install postgresql-contrib-9.6 -y;
sudo apt-get install libpq-dev -y;
sudo apt-get install postgresql-server-dev-9.6 -y;
