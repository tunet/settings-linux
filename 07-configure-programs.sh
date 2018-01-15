#!/bin/bash

source ./config.cfg

mkdir $HOME/bin;

ln -s $MY_DOTFILES_DIR/programs/composer.phar $HOME/bin/composer;
chmod 0777 $HOME/bin/composer;

ln -s $MY_DOTFILES_DIR/programs/phing.phar $HOME/bin/phing;
chmod 0777 $HOME/bin/phing;
