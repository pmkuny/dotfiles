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
alias pip='pip3.6'
alias ls='ls --color=auto'
export EDITOR=vim

# Support vi-bindings on shell
set -o vi
