#!/bin/bash

source ./config.cfg

mkdir $HOME/bin;

# COMPOSER
ln -s $MY_DOTFILES_DIR/programs/composer.phar $HOME/bin/composer;
chmod 0777 $HOME/bin/composer;

# PHING
ln -s $MY_DOTFILES_DIR/programs/phing.phar $HOME/bin/phing;
chmod 0777 $HOME/bin/phing;

# GOOGLE CHROME
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list';
sudo apt-get update;
sudo apt-get install google-chrome-stable;

# DBEAVER
sudo add-apt-repository ppa:serge-rider/dbeaver-ce;
sudo apt-get update;
sudo apt-get install dbeaver-ce;

# FILEZILLA
sudo sh -c 'echo "deb http://archive.getdeb.net/ubuntu xenial-getdeb apps" >> /etc/apt/sources.list.d/getdeb.list';
wget -q -O - http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add -
sudo apt update;
sudo apt install filezilla;
