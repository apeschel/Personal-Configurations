" Vundle:
    " Required:
        filetype off
        set rtp+=~/.vim/bundle/vundle/
        call vundle#rc()
        Plugin 'gmarik/vundle'

    " original repos on github
    Plugin 'apeschel/vim-vividchalk'
    Plugin 'apeschel/vim-syntax-apache'
    Plugin 'apeschel/pylint.vim'
    Plugin 'thisivan/vim-matchit'
    Plugin 'godlygeek/tabular'
    Plugin 'Rip-Rip/clang_complete'
    Plugin 'scrooloose/nerdtree'
    Plugin 'ekalinin/Dockerfile.vim'
    Plugin 'Shougo/unite.vim'
    Plugin 'Quramy/vison'
    Plugin 'derekwyatt/vim-scala'
    Plugin 'PProvost/vim-ps1'
    Plugin 'jez/vim-superman'
    Plugin 'hashivim/vim-terraform'
    Plugin 'google/vim-jsonnet'
    Plugin 'rodjek/vim-puppet'
    Plugin 'tpope/vim-fugitive'
    Plugin 'vim-syntastic/syntastic'
    " vim-scripts repos
    Plugin 'Cpp11-Syntax-Support'
    Plugin 'nginx.vim'
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
    set foldmethod=marker

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

" CTags:
    set tags+=~/tags/libc_tags

" System Specific Configs:
    if filereadable(glob("~/.vimrc.local"))
        source ~/.vimrc.local
    endif
