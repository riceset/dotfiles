call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'Raimondi/delimitMate'
call plug#end()

set hidden

set number
set relativenumber

colorscheme slate
set mouse=a

set inccommand=split
set clipboard=unnamed
set hlsearch
set expandtab
set shiftwidth=2
let mapleader="\<space>"

nnoremap <leader>; A;<esc>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>

let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'

:set laststatus=0 ruler

set clipboard=unnamedplus


language en_US
