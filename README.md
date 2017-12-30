# INSTALL

````bash
sudo apt-get update
````

````bash
sudo apt-get install libcurl4-gnutls-dev libexpat1-dev gettext libz-dev libssl-dev
````

````bash
sudo apt-get install git
````

````bash
git clone https://github.com/tunet/settings-linux.git ./dotfiles
````

````bash
cd dotfiles
````

#### Edit file config.cfg

#### Add permissions execute files: 01-install-soft.sh, 03-configure-vars.php, 04-configure-dotfiles.sh, 05-configure-ubntu.sh, 06-postresql-install.sh

````bash
sudo ./01-install-soft.sh
````

````bash
sudo ./03-configure-vars.php
````

````bash
sudo ./04-configure-dotfiles.sh
````

````bash
sudo ./05-configure-ubntu.sh
````

````bash
sudo ./06-postresql-install.sh
````

````bash
sudo -u postgres psql
create user tunet with password '123';
create database test_tunet;
grant all privileges on database test_tunet to tunet;
\q
````
