# Setup
sh -c "echo 'deb http://download.opensuse.org/repositories/home:/ColinDuquesnoy/xUbuntu_17.10/ /' > /etc/apt/sources.list.d/mellowplayer.list"
wget -nv https://download.opensuse.org/repositories/home:ColinDuquesnoy/xUbuntu_17.10/Release.key -O Release.key
apt-key add - < Release.key
rm Release.key
apt-get update
apt-get install -y aptitude
aptitude install -y git mellowplayer curl zsh filezilla gconf2 gconf-service libappindicator1
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)" && chsh -s `which zsh`

# Apps
snap install vscode --classic
snap install intellij-idea-community --classic
snap install chromium
snap install postman

wget https://github.com/meetfranz/franz/releases/download/v5.0.0-beta.18/franz_5.0.0-beta.18_amd64.deb -O franz.deb
dpkg -i franz.deb
rm franz.deb

# Languages
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | zsh
nvm install node

curl -s "https://get.sdkman.io" | zsh
sdk install java

# Link
ln -s $DOTFILES/.zshrc $HOME/.zshrc
