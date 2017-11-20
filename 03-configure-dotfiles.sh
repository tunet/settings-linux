#!/bin/bash

# MySQL settings
sudo rm /etc/mysql/mysql.conf.d/mysqld.cnf;
sudo ln -s $HOME/dotfiles/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf;
sudo sh -c "echo '\n\n@{HOMEDIRS}/** rwk,' >> /etc/apparmor.d/local/usr.sbin.mysqld";
sudo service apparmor restart;
sudo service mysql restart;
