#!/bin/bash

# Update the sources list
sudo apt-get update -y

# upgrade any packages available
sudo apt-get upgrade -y

# install nginx
sudo apt-get install nginx -y

# install git
sudo apt-get install git -y

# install nodejs
sudo apt-get install python-software-properties
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install nodejs -y

# install pm2
sudo npm install pm2 -g

echo 'export DB_HOST=mongodb://192.168.10.200:27017/posts' >> ~/.bashrc

sudo npm install


#ansible
# sudo apt install software-properties-common
# sudo apt-add-repository --yes --update ppa:ansible/ansible
# sudo apt install ansible
