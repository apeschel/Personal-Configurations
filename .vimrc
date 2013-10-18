" Vundle:
    " Required:
        filetype off
        set rtp+=~/.vim/bundle/vundle/
        call vundle#rc()
        Bundle 'gmarik/vundle'

    " original repos on github
    Bundle 'apeschel/vim-vividchalk'
    Bundle 'apeschel/vim-syntax-apache'
    Bundle 'thisivan/vim-matchit'
    Bundle 'godlygeek/tabular'
    Bundle 'Rip-Rip/clang_complete'
    " vim-scripts repos
    Bundle 'Cpp11-Syntax-Support'
    " non github repos
    "

    " Required:
        filetype plugin indent on

" Usage:
    set nocompatible
    runtime ftplugin/man.vim

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
    set directory=~/.vim/tmp

" Macros:
    " Convenient command to see the difference between the current buffer and the
    " file it was loaded from, thus the changes you made.
    " Only define it when not defined already.
    if !exists(":DiffOrig")
      command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
              \ | wincmd p | diffthis
    endif
