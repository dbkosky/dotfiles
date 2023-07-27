#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Git tab completion script
test -f ~/.git-completion.bash && . $_

alias odooenv='pyenv activate 38venv'
alias odoo-bin='odooenv && ~/src/odoo/odoo-bin --addons-path=~/src/odoo/addons,~/src/enterprise'

alias oe-support="odooenv && \
 ~/src/support-tools/oe-support.py"

if [[ $TERM != "xterm-256color" ]]; then
    powerline-daemon -q
    POWERLINE_BASH_CONTINUATION=1
    POWERLINE_BASH_SELECT=1
    . /usr/share/powerline/bindings/bash/powerline.sh
fi

export VISUAL=emacs
export EDITOR="$VISUAL"
