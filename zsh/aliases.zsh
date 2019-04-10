alias kill-containers="docker kill $(docker ps -q)"
alias rm-containers="docker rm $(docker ps -a -q)"
alias rm-images="docker rmi $(docker images -q)"
alias kill-node="killall node"
alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias sudo="sudo -E "
alias mv="mv -v"
alias rm="rm -vi"
alias cp="cp -v"
alias untar='tar -xvf'
alias clean-node="find -E . -regex '.*(dist|node_modules|yarn.lock|package-lock.json)$' | xargs rm -rf"
alias code='vscode'
