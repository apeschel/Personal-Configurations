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

export EDITOR="vim"
export VISUAL="vim"

export PS1="%{$fg[red]%}%h%{$fg[white]%}>%{$reset_color%} "
export RPS1="%{$fg[green]%}%m:%d%{$reset_color%}"
export CLICOLOR="yes"

alias grep='grep --color=auto'

export PATH="/usr/local/bin:${PATH}"
