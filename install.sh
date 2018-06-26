#!/bin/bash

# Setup
apt-get install -y aptitude
aptitude install git
aptitude install zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
chsh -s `which zsh`

# Tools
aptitude install -y filezilla

# Browsers
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome-stable_current_amd64.deb

# Development
wget http://go.microsoft.com/fwlink/?LinkID=760868 -O vscode.deb 
dpkg -i vscode.deb

# Node
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
nvm install 8.0.0
nvm use 8.0.0
nvm alias default 8.0.0

# PHP
curl -L -O https://github.com/phpbrew/phpbrew/raw/master/phpbrew
chmod +x phpbrew
sudo mv phpbrew /usr/bin/phpbrew
phpbrew init
phpbrew update
phpbrew install 7.0.1

# Ruby
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash
rvm install 2.3.1
