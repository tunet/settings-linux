#!/bin/bash

source ./config.cfg

cd $MY_DOTFILES_DIR/dotfiles/php/7.2/xdebug;

tar -xvzf xdebug-2.6.0beta1.tgz;

cd xdebug-2.6.0beta1;

phpize;
./configure;
make;
sudo cp modules/xdebug.so /usr/lib/php/20170718;
