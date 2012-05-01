#!/usr/bin/env bash

files=( .vim .vimrc .bashrc .zshrc .tmux.conf )

for file in ${files[@]}; do
    dest="${HOME}/${file}"

    if [[ ! -f $dest ]]; then
        ln -s "${HOME}/Personal-Configurations/${file}" "$dest"
    fi
done
