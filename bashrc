# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias nyresp38="ssh -X shishido@nyresp38.ny.ics.keio.ac.jp"
alias ls="ls --color=auto"
alias l=ls
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias llt="ls -lrt"
alias llat="ls -lrat"
alias ci=vi
alias rm="rm -i"
alias mail="ssh -L 9110:localhost:110 -L 9025:localhost:25 shishido@ny.ics.keio.ac.jp"
alias cdd="cd ../"
alias cddd="cd ../../"

###################################################
# color 
###################################################
if type -P dircolors > /dev/null ; then
	eval `dircolors $HOME/.dir_colors`
fi

###################################################
# keybind
###################################################
if [ -e ~/.Xmodmap ]; then
	xmodmap ~/.Xmodmap 
fi
