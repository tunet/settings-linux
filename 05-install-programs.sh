#!/bin/bash

source ./config.cfg

mkdir $HOME/bin;

# COMPOSER
ln -s $MY_DOTFILES_DIR/programs/composer.phar /usr/bin/composer;
chmod 0777 $HOME/bin/composer;

# PHING
ln -s $MY_DOTFILES_DIR/programs/phing.phar /usr/bin/phing;
chmod 0777 $HOME/bin/phing;
