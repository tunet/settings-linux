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
chmod 0777 01-install-soft.sh 02-configure-node-js.sh 03-configure-vars.php 04-configure-dotfiles.sh 05-install-programs.sh
````

````bash
./01-install-soft.sh
````

````bash
./02-configure-node-js.sh
````

````bash
./03-configure-vars.php
````

````bash
./04-configure-dotfiles.sh
````

````bash
./05-install-programs.sh
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
wget https://download.jetbrains.com/teamcity/TeamCity-2017.2.1.tar.gz
tar -xzf TeamCity-10.0.4.tar.gz
mkdir /opt/JetBrains
mv TeamCity /opt/JetBrains/TeamCity
/opt/JetBrains/TeamCity/bin
runAll.sh start
````

````bash
cd ~/dotfiles/programs
tar -xzf mysql-connector-java-5.1.45.tar.gz
mv ./mysql-connector-java-5.1.45/* ../todo/
````
