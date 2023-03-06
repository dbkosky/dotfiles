#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Git tab completion script
test -f ~/.git-completion.bash && . $_

alias odooenv='source ~/src/python_envs/venv/bin/activate'
alias odoo-bin='odooenv && ~/src/odoo/odoo-bin --addons-path=~/src/odoo/addons,~/src/enterprise'

alias odoo-iap="odooenv && ~/src/odoo/iap/odoo-bin \
--addons-path=~/src/iap/iap-odoo/addons/,\
~/src/iap/iap-enterprise/,\
~/src/iap/iap-apps/iap_services/,\
~/src/iap/iap-apps/iap_common,\
~/src/internal/default \
-p 8070 \
--proxy-mode"

if [[ $TERM != "xterm-256color" ]]; then
    powerline-daemon -q
    POWERLINE_BASH_CONTINUATION=1
    POWERLINE_BASH_SELECT=1
    . /usr/share/powerline/bindings/bash/powerline.sh
fi

export VISUAL=emacs
export EDITOR="$VISUAL"
