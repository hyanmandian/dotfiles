# Variables
export ZSH="$HOME/.oh-my-zsh"
export CODE="$HOME/Code"
export DOTFILES="$CODE/dotfiles"

# Theme
ZSH_THEME="robbyrussell"

# Plugins
plugins=(
  git
)

# Configs
source $ZSH/oh-my-zsh.sh
source $DOTFILES/zsh/nvm.zsh
source $DOTFILES/zsh/sdkman.zsh
source $DOTFILES/zsh/yarn.zsh
source $DOTFILES/zsh/rvm.zsh
source $DOTFILES/zsh/rust.zsh
source $DOTFILES/zsh/editor.zsh
source $DOTFILES/zsh/aliases.zsh
