#!/usr/bin/env bash

# Update Packages
sudo apt-get update && sudo apt-get -y upgrade

# Install Useful/Required Packages
sudo apt-get -y install python-pip python-dev libmysqlclient-dev git pv screen
sudo apt-get -y install vim
sudo pip install Django

# Install MariaDB
sudo apt-get -y install software-properties-common
sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xcbcb082a1bb943db
sudo add-apt-repository 'deb http://mirror.stshosting.co.uk/mariadb/repo/10.0/debian jessie main'
sudo debconf-set-selections <<< 'mariadb-server-10.0 mysql-server/root_password password rootpass'
sudo debconf-set-selections <<< 'mariadb-server-10.0 mysql-server/root_password_again password rootpass'
sudo apt-get update
sudo apt-get install -y mariadb-server

mysql -uroot -prootpass -e "CREATE DATABASE test_db;"

# Install depdencies
sudo pip install -r /vagrant/requirements.txt
