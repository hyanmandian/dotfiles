#!/bin/bash

# Setup
apt-get install -y aptitude
aptitude install git
aptitude install curl
aptitude install zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
chsh -s `which zsh`

# Tools
aptitude install -y filezilla

# Browsers
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome-stable_current_amd64.deb

# Development
snap install vscode --classic
snap install intellij-idea-community --classic
snap install spotify

# Node
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
nvm install node

# JVM
curl -s "https://get.sdkman.io" | bash
sdk install java
