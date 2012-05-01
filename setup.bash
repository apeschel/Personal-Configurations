#!/usr/bin/env bash

files=( .vim .vimrc .bashrc .zshrc .tmux.conf )

for file in ${files[@]}; do
    dest="${HOME}/${file}"

    if [[ ! -e $dest ]]; then
        ln -s "${HOME}/Personal-Configurations/${file}" "$dest"
    fi
done

vim_dir="${HOME}/.vim"
for dir in ${vim_dir}/{tmp,backup}; do
    if [[ ! -e $dir ]]; then
        mkdir $dir
    fi
done

vundle_dir="${vim_dir}/bundle/vundle"
if [[ ! -e $vundle_dir ]]; then
    git clone https://github.com/gmarik/vundle.git $vundle_dir
fi

vim -c "BundleInstall" -c "only" 2>/dev/null
