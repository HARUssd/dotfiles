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
alias s=ls
alias ks=ls
alias la="ls -a"
alias lla="ls -la"
alias ci=vi
alias mail="ssh -L 9110:localhost:110 -L 9025:localhost:25 shishido@ny.ics.keio.ac.jp"
alias cdd="cd .."
alias cddd="cd ../.."
alias resp25='ssh -X shishido@resp25.rt.k2.keio.ac.jp'
alias rresp25='ssh -X shishido@192.168.10.27'
alias rnyresp38='ssh -X shishido@192.168.11.40'
alias sshx='ssh -X'
