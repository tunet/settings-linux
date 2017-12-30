#!/bin/bash

source ./config.cfg

sudo cp $MY_DOTFILES_DIR/pgdg.list /etc/apt/sources.list.d/pgdg.list

wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | \
  sudo apt-key add -

sudo apt-get update

sudo apt-get install postgresql-9.6;
sudo apt-get install postgresql-client-9.6;
sudo apt-get install postgresql-contrib-9.6;
sudo apt-get install libpq-dev;
sudo apt-get install postgresql-server-dev-9.6;
sudo apt-get install pgadmin3;
