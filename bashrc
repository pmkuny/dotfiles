# Source global defaults if they exist
if [ -f /etc/bashrc ] ; then
    source /etc/bashrc
fi

#################################
# User Aliases and Configurations
#################################

# [user@host][~/working/dir]
# $ 
export PS1='[\u@\h][\w]\n\$ '

# Preserve vim colorscheme inside tmux
alias tmux='tmux -2'

# lazy aliases
alias vi='vim'
alias python='python3'
alias pip='pip3'
alias ls='ls --color=always'
alias k='kubecolor'

# Some git sync scripts
alias sync='for dir in $(ls ~/code/); do echo -e "\nPulling $dir/"; cd ~/code/$dir/; git checkout master; git pull origin master; cd ../; done'

alias mfa-iam='aws iam list-virtual-mfa-devices | grep UserName | sort | cut -f 2 -d:'

alias tf='terraform'

# Best Editor
export EDITOR=vim

# Support vi-bindings in shell
set -o vi

# For Vagrant/Virtualbox within WSL
# Only necessary for non-WSL2 installs
export PATH="$PATH:/mnt/c/Program Files/Oracle/VirtualBox"
export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1"

# Configure SSH agent
if [ -z "$SSH_AGENT_PID" ] && [ -z "$SSH_AUTH_SOCK" ] ; then
    eval `ssh-agent -s`
fi

# PIP Locals
export PATH="$PATH:~/.local/bin/"

# Go
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin

# NPM
export PATH="$PATH:~/.npm-packages/bin/"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Starship up
eval "$(starship init bash)"
. "$HOME/.cargo/env"
