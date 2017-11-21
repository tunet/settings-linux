#!/bin/bash

# MySQL settings
sudo rm /etc/mysql/mysql.conf.d/mysqld.cnf;
sudo ln -s $HOME/dotfiles/dotfiles/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf;
sudo sh -c "echo '\n\n@{HOMEDIRS}/** rwk,' >> /etc/apparmor.d/local/usr.sbin.mysqld";
sudo service apparmor restart;
sudo service mysql restart;

# NGINX change port 80 -> 8085
sudo rm /etc/nginx/sites-avaliable/default;
sudo ln -s $HOME/dotfiles/dotfiles/nginx-default /etc/nginx/sites-avaliable/default;
sudo service nginx restart;
sudo service apache2 restart;
