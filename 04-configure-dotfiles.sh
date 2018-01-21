#!/bin/bash

source ./config.cfg

# MySQL settings
rm /etc/mysql/mysql.conf.d/mysqld.cnf;
ln -s $MY_DOTFILES_DIR/dotfiles/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf;
rm /etc/apparmor.d/local/usr.sbin.mysqld;
ln -s $MY_DOTFILES_DIR/dotfiles/apparmor-usr.sbin.mysqld /etc/apparmor.d/local/usr.sbin.mysqld;
service apparmor restart;
service mysql restart;

# NGINX change port 80 -> 8085
rm /etc/nginx/sites-available/default;
ln -s $MY_DOTFILES_DIR/dotfiles/nginx-default /etc/nginx/sites-available/default;
service nginx restart;
service apache2 restart;

# ---------------------------------------------------
rm /etc/php/7.2/cli/php.ini;
rm /etc/php/7.2/fpm/php.ini;
ln -s $MY_DOTFILES_DIR/dotfiles/php/7.2/php-cli.ini /etc/php/7.2/cli/php.ini;
ln -s $MY_DOTFILES_DIR/dotfiles/php/7.2/php-fpm.ini /etc/php/7.2/fpm/php.ini;
chmod 0777 $MY_DOTFILES_DIR/logs/php/7.2-cli.log;
chmod 0777 $MY_DOTFILES_DIR/logs/php/7.2-fpm.log;
# ---------------------------------------------------
service nginx restart;
service php7.2-fpm restart;
