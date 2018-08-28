# Source global defaults if they exist
if [ -f /etc/bashrc ] ; then
	source /etc/bashrc
fi

#################################
# User Aliases and Configurations
#################################

# Preserve vim colorscheme inside tmux
alias tmux='tmux -2'

# [18:00][user@host][~/working/dir]
# $ 
export PS1='[\A][\u@\h][\w]\n\$ '

alias vi=vim
alias python=python3
alias pip='pip3'
alias ls='ls --color=auto'
export EDITOR=vim

# Support vi-bindings on shell
set -o vi

if $(which tmux | grep 'bin/tmux'); then
    if [ ! -z $TMUX ]; then
        tmux attach-session -t default || tmux -L
    fi
fi

# For Vagrant/Virtualbox within WSL
export PATH="$PATH:/mnt/c/Program Files/Oracle/VirtualBox"
export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1"

# For Docker within WSL
export DOCKER_HOST=tcp://0.0.0.0:2375
