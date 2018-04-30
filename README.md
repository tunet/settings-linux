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
cd settings-linux
````

````bash
git checkout docker-pack
````

````bash
chmod 0777 01-install-soft.sh 02-configure-ubuntu.sh
````

````bash
sudo ./01-install-soft.sh
````

````bash
sudo ./02-configure-ubuntu.sh
````

````bash
sudo -u postgres psql
create user tunet with password '123';
create database test_tunet;
grant all privileges on database test_tunet to tunet;
\q
````
