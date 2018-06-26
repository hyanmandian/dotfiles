# Oh my zsh
export ZSH="/home/hyanmandian/.oh-my-zsh"

# Theme
ZSH_THEME="robbyrussell"

# Plugins
plugins=(
  git
)

# Configs
source $ZSH/oh-my-zsh.sh

[[ -f ~/.zsh/nvm.zsh ]] && source ~/.zsh/nvm.zsh
[[ -f ~/.zsh/sdkman.zsh ]] && source ~/.zsh/sdkman.zsh
