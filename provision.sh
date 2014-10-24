#!/bin/bash

sed -i 's/^mesg n$/tty -s \&\& mesg n/g' /root/.profile

echo "Updating APT sources"
apt-get update

echo "Installing Git"
apt-get install git -y

echo "Installing MySQL"
debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'
apt-get update
apt-get install -y mysql-server

echo "Installing WWW & WP"
apt-get install wordpress -y