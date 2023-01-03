#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias odoo-bin='~/src/odoo/odoo-bin --addons-path=~/src/odoo/addons,~/src/enterprise'
