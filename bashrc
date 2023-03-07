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
alias k='kubectl'

# Some git sync scripts
alias sync='for dir in $(ls ~/code/); do echo -e "\nPulling $dir/"; cd ~/code/$dir/; git checkout master; git pull origin master; cd ../; done'

alias mfa-iam='aws iam list-virtual-mfa-devices | grep UserName | sort | cut -f 2 -d:'

alias tf='terraform'

# Best Editor
export EDITOR=vim

# Support vi-bindings in shell
set -o vi

if $(which tmux | grep 'bin/tmux'); then
    if [ ! -z $TMUX ]; then
        tmux attach-session -t default || tmux -L
    fi
fi

# For Vagrant/Virtualbox within WSL
# No longer relevant with WSL2
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

###
# Synth Shell Settings
###

##-----------------------------------------------------
## synth-shell-prompt.sh
if [ -f /home/ec2-user/.config/synth-shell/synth-shell-prompt.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/ec2-user/.config/synth-shell/synth-shell-prompt.sh
fi

##-----------------------------------------------------
## better-ls
if [ -f /home/ec2-user/.config/synth-shell/better-ls.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/ec2-user/.config/synth-shell/better-ls.sh
fi

##-----------------------------------------------------
## alias
if [ -f /home/ec2-user/.config/synth-shell/alias.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/ec2-user/.config/synth-shell/alias.sh
fi

##-----------------------------------------------------
## better-history
if [ -f /home/ec2-user/.config/synth-shell/better-history.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/ec2-user/.config/synth-shell/better-history.sh
fi
