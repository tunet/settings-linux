# INSTALL

sudo apt-get update

sudo apt-get install libcurl4-gnutls-dev libexpat1-dev gettext libz-dev libssl-dev

sudo apt-get install git

git clone https://github.com/tunet/settings-linux.git ./dotfiles

cd dotfiles

#### Edit file config.cfg

#### Add permissions execute files: 01-install-soft.sh, 03-configure-vars.php, 04-configure-dotfiles.sh, 05-configure-ubntu.sh

sudo ./01-install-soft.sh

sudo ./03-configure-vars.php

sudo ./04-configure-dotfiles.sh

sudo ./05-configure-ubntu.sh
