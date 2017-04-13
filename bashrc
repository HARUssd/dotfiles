# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias nyresp38="ssh -X shishido@nyresp38.ny.ics.keio.ac.jp"
alias l=ls
alias la="ls -a"
alias lla="ls -la"
alias ci=vi
