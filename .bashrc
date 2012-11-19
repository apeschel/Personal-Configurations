if [ -f /etc/bashrc ]; then
    source /etc/bashrc
fi

set -o vi

export EDITOR="vim"
export VISUAL="vim"

alias grep='grep --color=auto'

export PATH="/usr/local/bin:${PATH}"

if [[ -d "${HOME}/.rvm/bin" ]]; then
    PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
fi
