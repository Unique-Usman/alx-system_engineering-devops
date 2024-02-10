#!/usr/bin/env bash
# Installs MySQL server version 5.7.x

# Instructions for signature checking:
# You need to copy the key from https://dev.mysql.com/doc/refman/5.7/en/checking-gpg-signature.html
# Once copied, paste it into a file named signature.key.
# The above key is used for signature checking.

# Add the key for signature checking
sudo apt-key add signature.key
sudo apt-key add signature.key

# Update the package lists
sudo apt-get update

# Add the MySQL repository key
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys B7B3B788A8D3785C

# Add the MySQL repository
sudo sh -c 'echo "deb http://repo.mysql.com/apt/ubuntu bionic mysql-5.7" >> /etc/apt/sources.list.d/mysql.list'

# Update the package lists again
sudo apt-get update

# Check the available version of MySQL server
sudo apt-cache policy mysql-server

# Install MySQL server 5.7
sudo apt install -f mysql-client=5.7* mysql-community-server=5.7* mysql-server=5.7*
