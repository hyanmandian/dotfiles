#!/bin/bash

# Setup
apt-get install -y aptitude
aptitude install -y git curl zsh filezilla gconf2
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)" && chsh -s `which zsh`

# Apps
snap install vscode --classic
snap install intellij-idea-community --classic
snap install spotify
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O chrome.deb && dpkg -i chrome.deb && rm chrome.deb
wget https://github.com/meetfranz/franz/releases/download/v5.0.0-beta.18/franz_5.0.0-beta.18_amd64.deb -O franz.deb && dpkg -i franz.deb && rm franz.deb

# Node
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
nvm install node

# JVM
curl -s "https://get.sdkman.io" | bash
sdk install java
