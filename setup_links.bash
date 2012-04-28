#!/usr/bin/env bash

files=( .vim .vimrc .bashrc .zshrc .tmux.conf )

for file in ${files[@]}; do
    dest="~/${file}"

    if [ ! -f $destination ]; then
        echo ln -s ~/Personal-Configurations/${file} $dest
    fi
done
