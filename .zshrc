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
source $DOTFILES/zsh/aliases.zsh