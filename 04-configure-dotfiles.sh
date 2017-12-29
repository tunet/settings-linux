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

# PHP settings
sudo rm /etc/php/7.0/apache2/php.ini;
sudo rm /etc/php/7.0/cli/php.ini;
sudo rm /etc/php/7.0/fpm/php.ini;
sudo rm /etc/php/7.0/mods-available/xdebug.ini;
sudo ln -s $MY_DOTFILES_DIR/dotfiles/php/7.0/php-apache.ini /etc/php/7.0/apache2/php.ini;
sudo ln -s $MY_DOTFILES_DIR/dotfiles/php/7.0/php-cli.ini /etc/php/7.0/cli/php.ini;
sudo ln -s $MY_DOTFILES_DIR/dotfiles/php/7.0/php-fpm.ini /etc/php/7.0/fpm/php.ini;
sudo ln -s $MY_DOTFILES_DIR/dotfiles/php/xdebug.ini /etc/php/7.0/mods-available/xdebug.ini;
# ---------------------------------------------------
sudo rm /etc/php/7.1/apache2/php.ini;
sudo rm /etc/php/7.1/cli/php.ini;
sudo rm /etc/php/7.1/fpm/php.ini;
sudo rm /etc/php/7.1/mods-available/xdebug.ini;
sudo ln -s $MY_DOTFILES_DIR/dotfiles/php/7.1/php-apache.ini /etc/php/7.1/apache2/php.ini;
sudo ln -s $MY_DOTFILES_DIR/dotfiles/php/7.1/php-cli.ini /etc/php/7.1/cli/php.ini;
sudo ln -s $MY_DOTFILES_DIR/dotfiles/php/7.1/php-fpm.ini /etc/php/7.1/fpm/php.ini;
sudo ln -s $MY_DOTFILES_DIR/dotfiles/php/xdebug.ini /etc/php/7.1/mods-available/xdebug.ini;
# ---------------------------------------------------
sudo rm /etc/php/7.2/apache2/php.ini;
sudo rm /etc/php/7.2/cli/php.ini;
sudo rm /etc/php/7.2/fpm/php.ini;
sudo ln -s $MY_DOTFILES_DIR/dotfiles/php/7.2/php-apache.ini /etc/php/7.2/apache2/php.ini;
sudo ln -s $MY_DOTFILES_DIR/dotfiles/php/7.2/php-cli.ini /etc/php/7.2/cli/php.ini;
sudo ln -s $MY_DOTFILES_DIR/dotfiles/php/7.2/php-fpm.ini /etc/php/7.2/fpm/php.ini;
# ---------------------------------------------------
sudo chmod 0777 $MY_DOTFILES_DIR/logs/php/xdebug.log;
sudo chmod 0777 $MY_DOTFILES_DIR/logs/php/xdebug-profiler;
# ---------------------------------------------------
sudo chmod 0777 $MY_DOTFILES_DIR/logs/php/7.0-apache2.log;
sudo chmod 0777 $MY_DOTFILES_DIR/logs/php/7.0-cli.log;
sudo chmod 0777 $MY_DOTFILES_DIR/logs/php/7.0-fpm.log;
sudo chmod 0777 $MY_DOTFILES_DIR/logs/php/7.1-apache2.log;
sudo chmod 0777 $MY_DOTFILES_DIR/logs/php/7.1-cli.log;
sudo chmod 0777 $MY_DOTFILES_DIR/logs/php/7.1-fpm.log;
sudo chmod 0777 $MY_DOTFILES_DIR/logs/php/7.2-apache2.log;
sudo chmod 0777 $MY_DOTFILES_DIR/logs/php/7.2-cli.log;
sudo chmod 0777 $MY_DOTFILES_DIR/logs/php/7.2-fpm.log;
# ---------------------------------------------------
sudo service apache2 restart;
sudo service nginx restart;
sudo service php7.0-fpm restart;
sudo service php7.1-fpm restart;
sudo service php7.2-fpm restart;
