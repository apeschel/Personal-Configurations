if [[ -z "$SSH_AUTH_SOCK" ]]; then
    eval $(ssh-agent -s)
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
