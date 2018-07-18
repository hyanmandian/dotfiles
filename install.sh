sudo su -

# Setup

## Player
sh -c "echo 'deb http://download.opensuse.org/repositories/home:/ColinDuquesnoy/xUbuntu_17.10/ /' > /etc/apt/sources.list.d/mellowplayer.list"
wget -nv https://download.opensuse.org/repositories/home:ColinDuquesnoy/xUbuntu_17.10/Release.key -O Release.key
apt-key add - < Release.key
rm Release.key

## Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
apt-key fingerprint 0EBFCD88
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-Linux-x86_64 -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

apt-get update
apt-get install -y aptitude
aptitude install -y git mellowplayer docker-ce curl zsh filezilla gconf2 gconf-service libappindicator1 apt-transport-https ca-certificates software-properties-common

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)" && chsh -s `which zsh`

# Fix docker permissions
groupadd docker
usermod -aG docker $USER

# Apps
snap install vscode --classic
snap install intellij-idea-community --classic
snap install heroku --classic
snap install postman

wget https://github.com/meetfranz/franz/releases/download/v5.0.0-beta.18/franz_5.0.0-beta.18_amd64.deb -O franz.deb
dpkg -i franz.deb
rm franz.deb

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O chrome.deb
dpkg -i chrome.deb
rm chrome.deb

# Languages
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | zsh
nvm install node

curl -s "https://get.sdkman.io" | zsh
sdk install java

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable
rvm install ruby

# Link
ln -s $DOTFILES/.zshrc $HOME/.zshrc
