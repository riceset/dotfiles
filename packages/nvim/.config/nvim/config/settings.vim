syntax on
set noshowmode "Hides bottom text INSERT etc
set noshowcmd
set number relativenumber
set clipboard=unnamedplus
set noru
set t_Co=256
set t_ut=
set expandtab
set laststatus=0 ruler
set inccommand=split
set path+=** " Allows finding a file recursively
let &fcs='eob: ' " Hides the tilde sign on blank lines
let mapleader="\<space>"

hi Red cterm=italic gui=italic

" Open new split panes to right and bottom
set splitbelow
set splitright

" Tabs to 4 spaces
set tabstop=4
set softtabstop=4
