#!/usr/bin/env bash

echo "Update packages"
sudo apt-get update

echo "Build packages and requirements"
sudo apt-get -y install make build-essential libssl-dev libreadline-dev zlib1g-dev

echo "Prepare git enviornment"
sudo apt-get install libcurl4-gnutls-dev libexpat1-dev gettext unzip

echo "Installing Git"
sudo apt-get -y install git

echo "Configure Git"
git config --global user.name "Brock Ellis"
git config --global user.email "brock@sharproot.com"

echo "NodeJS"
sudo apt-get -y install nodejs

echo "Perl locale warning fix"
sudo locale-gen es_ES.UTF-8
sudo dpkg-reconfigure locales

## echo "Installing Apache"
## sudo apt-get -y install apache2

echo "MySQL Server"
# Credentials:
#   User: root
#   Password: root
# If you want a different password, change next two lines.
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'
sudo apt-get -y install mysql-server
sudo apt-get -y install mysql-client 
sudo apt-get -y install libmysqlclient-dev

echo "Rbenv"
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc

echo "Ruby-build (rbenv install)"
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
source ~/.bashrc

echo "Install Ruby 2.2.3"
sudo -H -u vagrant bash -i -c 'rbenv install 2.2.3'

echo "Set ruby global version"
sudo -H -u vagrant bash -i -c 'rbenv global 2.2.3'

echo "Install Gems: mysql, bundler and rails"
sudo -H -u vagrant bash -i -c 'gem install bundler --no-ri --no-rdoc'
sudo -H -u vagrant bash -i -c 'gem install rails --no-ri --no-rdoc'
sudo -H -u vagrant bash -i -c 'gem install mysql2 --no-ri --no-rdoc'
sudo -H -u vagrant bash -i -c 'rbenv rehash'
