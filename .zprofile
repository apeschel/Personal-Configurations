if [[ -z "$SSH_AUTH_SOCK" ]]; then
    eval $(ssh-agent -s)
fi

zprofile_local="${HOME}/.zprofile_local"
if [[ -e "$zprofile_local" ]]; then
    source "$zprofile_local"
fi
