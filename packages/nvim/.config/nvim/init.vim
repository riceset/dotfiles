"  _       _ _               _
" (_)_ __ (_) |_      __   _(_)_ __ ___
" | | '_ \| | __|     \ \ / / | '_ ` _ \
" | | | | | | |_   _   \ V /| | | | | | |
" |_|_| |_|_|\__| (_)   \_/ |_|_| |_| |_|

" Import Plugins
source ~/.config/nvim/config/plugins.vim

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
hi Red cterm=italic gui=italic
hi CocFadeOut gui=undercurl

" Open new split panes to right and bottom
set splitbelow
set splitright

" Tabs to 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Navigation between splits using Control + vim keys
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Next Line
inoremap <expr> <cr> getline(".")[col(".")-2:col(".")-1]=="{}" ? "<cr><esc>O" : "<cr>"

" Fuzzy Finder
let mapleader="\<space>"
nmap <leader>g :FZF<CR>
nmap <leader>h :History<CR>


let g:floaterm_keymap_toggle = '<F2>'

let g:SignatureMarkTextHLDynamic = 1 " Vim-Signature colors based on GitGutter

let g:auto_save = 1 " Enables AutoSave
let g:auto_save_silent = 1 " Hides (AutoSave) saved at ??:??:??

" Additional Config
source ~/.config/nvim/config/airline.vim
source ~/.config/nvim/config/theme.vim
source ~/.config/nvim/config/transparency.vim
source ~/.config/nvim/config/coc.vim
