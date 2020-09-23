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
alias vi='vim'
alias python='python3'
alias pip='pip3'
alias ls='ls --color=always'
# Some git sync scripts
alias sync='for dir in $(ls ~/code/); do echo -e "\nPulling $dir/"; cd ~/code/$dir/; git checkout master; git pull origin master; cd ../; done'
alias mfa-iam='aws iam list-virtual-mfa-devices | grep UserName | sort | cut -f 2 -d:'
export EDITOR=vim

# Support vi-bindings in shell
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

# Configure SSH agent
if [ -z "$SSH_AGENT_PID" ] && [ -z "$SSH_AUTH_SOCK" ] ; then
    eval `ssh-agent -s`
fi

# PIP Locals
export PATH="$PATH:~/.local/bin/"
