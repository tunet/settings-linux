#!/bin/bash

source ./config.cfg

# MySQL settings
sudo rm /etc/mysql/mysql.conf.d/mysqld.cnf;
sudo ln -s $MY_DOTFILES_DIR/dotfiles/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf;
sudo rm /etc/apparmor.d/local/usr.sbin.mysqld;
sudo ln -s $MY_DOTFILES_DIR/dotfiles/apparmor-usr.sbin.mysqld /etc/apparmor.d/local/usr.sbin.mysqld;
sudo service apparmor restart;
sudo service mysql restart;

# NGINX change port 80 -> 8085
sudo rm /etc/nginx/sites-available/default;
sudo ln -s $MY_DOTFILES_DIR/dotfiles/nginx-default /etc/nginx/sites-available/default;
sudo service nginx restart;
sudo service apache2 restart;

# ---------------------------------------------------
sudo rm /etc/php/7.2/cli/php.ini;
sudo rm /etc/php/7.2/fpm/php.ini;
sudo ln -s $MY_DOTFILES_DIR/dotfiles/php/7.2/php-cli.ini /etc/php/7.2/cli/php.ini;
sudo ln -s $MY_DOTFILES_DIR/dotfiles/php/7.2/php-fpm.ini /etc/php/7.2/fpm/php.ini;
sudo chmod 0777 $MY_DOTFILES_DIR/logs/php/7.2-cli.log;
sudo chmod 0777 $MY_DOTFILES_DIR/logs/php/7.2-fpm.log;
# ---------------------------------------------------
sudo service nginx restart;
sudo service php7.2-fpm restart;
