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

# APACHE2 settings
sudo rm /etc/apache2/apache2.conf;
sudo ln -s $MY_DOTFILES_DIR/dotfiles/apache2.conf /etc/apache2/apache2.conf;
sudo a2enmod rewrite;
sudo service apache2 restart;
