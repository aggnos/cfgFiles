#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
# PS1="\[\e[01;33m\]\u\[\e[0m\]\[\e[00;37m\]@\[\e[0m\]\[\e[01;37m\]\h\[\e[0m\]\[\e[00;30m\]:\[\e[0m\]\[\e[00;37m\]\W\[\e[0m\]\[\e[01;31m\]\$\[\e[0m\] "


export PS1="\[\e[37m\]\A\[\e[m\]\[\e[31m\]@\[\e[m\]\W\[\e[31m\]\\$\[\e[m\] "
alias grep='grep --color=auto'
source /usr/share/git/completion/git-completion.bash
