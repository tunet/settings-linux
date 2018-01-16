#!/bin/bash

sudo apt-get update;

#sudo apt-get install mercurial -y;

sudo apt-get install nginx -y;

sudo apt-get install mysql-server -y;

#sudo apt-get install apache2 -y;

sudo add-apt-repository ppa:ondrej/php;
sudo apt-get update;

#sudo apt-get install php7.0 -y;
#sudo apt-get install php7.0-fpm -y;
#sudo apt-get install php7.0-zip -y;
#sudo apt-get install php7.0-xmlrpc -y;
#sudo apt-get install php7.0-xsl -y;
#sudo apt-get install php7.0-mbstring -y;
#sudo apt-get install php7.0-mcrypt -y;
#sudo apt-get install php7.0-mysql -y;
#sudo apt-get install php7.0-odbc -y;
#sudo apt-get install php7.0-pgsql -y;
#sudo apt-get install php7.0-pspell -y;
#sudo apt-get install php7.0-readline -y;
#sudo apt-get install php7.0-recode -y;
#sudo apt-get install php7.0-snmp -y;
#sudo apt-get install php7.0-soap -y;
#sudo apt-get install php7.0-sqlite3 -y;
#sudo apt-get install php7.0-sybase -y;
#sudo apt-get install php7.0-tidy -y;
#sudo apt-get install php7.0-xml -y;
#sudo apt-get install php7.0-json -y;
#sudo apt-get install php7.0-ldap -y;
#sudo apt-get install php7.0-intl -y;
#sudo apt-get install php7.0-interbase -y;
#sudo apt-get install php7.0-imap -y;
#sudo apt-get install php7.0-gmp -y;
#sudo apt-get install php7.0-gd -y;
#sudo apt-get install php7.0-enchant -y;
#sudo apt-get install php7.0-dba -y;
#sudo apt-get install php7.0-bz2 -y;
#sudo apt-get install php7.0-bcmath -y;
#sudo apt-get install php7.0-phpdbg -y;
#sudo apt-get install php7.0-cgi -y;
#sudo apt-get install php7.0-cli -y;
#sudo apt-get install php7.0-dev -y;
#sudo apt-get install php7.0-xdebug -y;

sudo apt-get install php7.1 -y;
sudo apt-get install php7.1-fpm -y;
sudo apt-get install php7.1-zip -y;
sudo apt-get install php7.1-xmlrpc -y;
sudo apt-get install php7.1-xsl -y;
sudo apt-get install php7.1-mbstring -y;
sudo apt-get install php7.1-mcrypt -y;
sudo apt-get install php7.1-mysql -y;
sudo apt-get install php7.1-odbc -y;
sudo apt-get install php7.1-pgsql -y;
sudo apt-get install php7.1-pspell -y;
sudo apt-get install php7.1-readline -y;
sudo apt-get install php7.1-recode -y;
sudo apt-get install php7.1-snmp -y;
sudo apt-get install php7.1-soap -y;
sudo apt-get install php7.1-sqlite3 -y;
sudo apt-get install php7.1-sybase -y;
sudo apt-get install php7.1-tidy -y;
sudo apt-get install php7.1-xml -y;
sudo apt-get install php7.1-json -y;
sudo apt-get install php7.1-ldap -y;
sudo apt-get install php7.1-intl -y;
sudo apt-get install php7.1-interbase -y;
sudo apt-get install php7.1-imap -y;
sudo apt-get install php7.1-gmp -y;
sudo apt-get install php7.1-gd -y;
sudo apt-get install php7.1-enchant -y;
sudo apt-get install php7.1-dba -y;
sudo apt-get install php7.1-bz2 -y;
sudo apt-get install php7.1-bcmath -y;
sudo apt-get install php7.1-phpdbg -y;
sudo apt-get install php7.1-cgi -y;
sudo apt-get install php7.1-cli -y;
sudo apt-get install php7.1-dev -y;
sudo apt-get install php7.1-xdebug -y;

sudo apt-get install php7.2 -y;
sudo apt-get install php7.2-fpm -y;
sudo apt-get install php7.2-zip -y;
sudo apt-get install php7.2-xmlrpc -y;
sudo apt-get install php7.2-xsl -y;
sudo apt-get install php7.2-mbstring -y;
sudo apt-get install php7.2-mysql -y;
sudo apt-get install php7.2-odbc -y;
sudo apt-get install php7.2-pgsql -y;
sudo apt-get install php7.2-pspell -y;
sudo apt-get install php7.2-readline -y;
sudo apt-get install php7.2-recode -y;
sudo apt-get install php7.2-snmp -y;
sudo apt-get install php7.2-soap -y;
sudo apt-get install php7.2-sqlite3 -y;
sudo apt-get install php7.2-sybase -y;
sudo apt-get install php7.2-tidy -y;
sudo apt-get install php7.2-xml -y;
sudo apt-get install php7.2-json -y;
sudo apt-get install php7.2-ldap -y;
sudo apt-get install php7.2-intl -y;
sudo apt-get install php7.2-interbase -y;
sudo apt-get install php7.2-imap -y;
sudo apt-get install php7.2-gmp -y;
sudo apt-get install php7.2-gd -y;
sudo apt-get install php7.2-enchant -y;
sudo apt-get install php7.2-dba -y;
sudo apt-get install php7.2-bz2 -y;
sudo apt-get install php7.2-bcmath -y;
sudo apt-get install php7.2-phpdbg -y;
sudo apt-get install php7.2-cgi -y;
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

sudo apt-get install postgresql-9.6;
sudo apt-get install postgresql-client-9.6;
sudo apt-get install postgresql-contrib-9.6;
sudo apt-get install libpq-dev;
sudo apt-get install postgresql-server-dev-9.6;
