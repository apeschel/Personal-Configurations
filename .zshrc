autoload -U compinit
compinit

autoload -U colors
colors

HISTFILE=~/.zhistory
HISTSIZE=1000
SAVEHIST=1000

# multiple zsh's all append to same history file (rather than last overwrites)
setopt   appendhistory

set -o vi

export PATH="/usr/local/Cellar/ruby192/1.9.2-p290/bin/:${PATH}"
export EDITOR="vim"
export VISUAL="vim"

export PS1="%{$fg[red]%}%h%{$fg[white]%}>%{$reset_color%} "
export RPS1="%m:%d"
export CLICOLOR="yes"

alias grep='grep --color=auto'
