" Vundle:
    " Required:
        filetype off
        set rtp+=~/.vim/bundle/vundle/
        call vundle#rc()
        Bundle 'gmarik/vundle'

    " original repos on github
    Bundle 'apeschel/vim-vividchalk'
    " vim-scripts repos
    "
    " non github repos
    "

    " Required:
        filetype plugin indent on

" Usage:
    set nocompatible

" Indentation:
    set shiftwidth=4
    set softtabstop=4
    set expandtab
    set tabstop=8
    set backspace=indent,eol,start
    set listchars=tab:»·,trail:·

" Interface:
    syntax on
    colorscheme vividchalk
    set list
    set ruler
    set hlsearch

" Swap Files:
    set backup
    set backupdir=~/.vim/backup
    set directory=~/.vim/tmp/
