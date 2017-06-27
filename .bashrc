# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# for virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

# set default editor
export EDITOR="vim"

# Colorize the ls output
alias ls='ls --color=auto'

# Colorize diff output
alias diff='diff --color=auto'

# Colorize grep output
alias grep='grep --color=auto'
