# INSTALL

````bash
apt-get update
````

````bash
apt-get install libcurl4-gnutls-dev libexpat1-dev gettext libz-dev libssl-dev
````

````bash
apt-get install git
````

````bash
git clone https://github.com/tunet/settings-linux.git ./dotfiles
````

````bash
cd dotfiles
````

````bash
git checkout production
````

#### Edit file config.cfg

````bash
chmod 0777 01-install-soft.sh 02-configure-vars.php 03-configure-dotfiles.sh 04-install-programs.sh
````

````bash
./01-install-soft.sh
````

````bash
./02-configure-vars.php
````

````bash
./03-configure-dotfiles.sh
````

````bash
./04-install-programs.sh
````

````bash
sudo -u postgres psql
create user tunet with password '123';
create database test_tunet;
grant all privileges on database test_tunet to tunet;
\q
````

````bash
cd ~
wget https://download.jetbrains.com/teamcity/TeamCity-2018.1.2.tar.gz
tar -xzf TeamCity-2018.1.2.tar.gz
cd JetBrains/TeamCity/bin
runAll.sh start
````
