#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# As on the arch wiki
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh

alias ls='ls --color=auto'
alias cat='bat'
PS1='[\u@\h \W]\$ '
alias config='/usr/bin/git --git-dir=/home/dan/dotfiles --work-tree=/home/dan'
