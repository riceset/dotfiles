"  _       _ _               _
" (_)_ __ (_) |_      __   _(_)_ __ ___
" | | '_ \| | __|     \ \ / / | '_ ` _ \
" | | | | | | |_   _   \ V /| | | | | | |
" |_|_| |_|_|\__| (_)   \_/ |_|_| |_| |_|

" Import Plugins
call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'Raimondi/delimitMate'
Plug 'tomasiser/vim-code-dark'
Plug 'mcmartelle/vim-monokai-bold'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sainnhe/sonokai'
Plug 'voldikss/vim-floaterm'
Plug 'tpope/vim-commentary'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Plug 'preservim/tagbar'
"Plug '907th/vim-auto-save'
"Plug 'norcalli/nvim-colorizer.lua'
call plug#end()

""" CONFIGURATION

" Basic Config
syntax on
set noshowmode "Hides bottom text INSERT etc
set encoding=UTF-8 " Vim devicons
set laststatus=0
set noshowcmd
set cmdheight=1
set hidden
set number
set relativenumber
set termguicolors
set t_Co=256
set t_ut=
hi! Directory guifg=none ctermfg=none
hi Normal guibg=NONE ctermbg=NONE
set inccommand=split
set clipboard=unnamed
set hlsearch
set expandtab
set shiftwidth=2
let mapleader="\<space>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'
set laststatus=0 ruler
set nosmd
set noru
set clipboard=unnamedplus
language en_US

" Gutter + - ~
highlight GitGutterAdd ctermfg=2
highlight GitGutterChange ctermfg=3
highlight GitGutterDelete ctermfg=1
highlight GitGutterChangeDelete ctermfg=4

" FLoat term
hi FloatermBorder guibg=none guifg=none
" Shortcuts
let g:floaterm_keymap_toggle = '<F2>'
let g:floaterm_keymap_new    = '<F12>'
let g:floaterm_keymap_prev   = '<F9>'
let g:floaterm_keymap_next   = '<F10>'

" stop highlighting matching parenthesis
"hi! MatchParen cterm=NONE gui=NONE guibg=NONE guifg=NONE

" Next Line
inoremap <expr> <cr> getline(".")[col(".")-2:col(".")-1]=="{}" ? "<cr><esc>O" : "<cr>"

" Compile C
"map <F8> :w <CR> :!clang % -o %< -lcs50 && ./%< <CR> " Runs inside vim

" Runs inside floaterm
nmap <C-l> :w <CR> :!clang % -lcs50 <CR>
nmap <C-k> :FloatermNew --height=0.9 --width=0.9 <CR> ./a.out <CR>

" Autosave
let g:auto_save = 1

" THEME

" Selection
colorscheme sonokai
"colorscheme nightfly
"colorscheme codedark
"colorscheme monokai-bold

" Theme Settings
source ~/.config/nvim/config/theme.vim

" Transparency
source ~/.config/nvim/config/Transparency.vim

"   ___ _____ _   _ _____ ____  ____
"  / _ \_   _| | | | ____|  _ \/ ___|
" | | | || | | |_| |  _| | |_) \___ \
" | |_| || | |  _  | |___|  _ < ___) |
"  \___/ |_| |_| |_|_____|_| \_\____/

" NERDTree

" Open by default
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" Quits nerd tree when quitting vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Size
let g:NERDTreeWinSize=22

" Removes help message
let NERDTreeMinimalUI=1

" Removes Path
"let NERDTreeStatusline="%{matchstr(getline('.'), 'szsw(.*)')}"

" Tagbar
"autocmd VimEnter * Tagbar
"let g:is_tagbar=0

" Size
"let g:tagbar_width=22

" Removes help message
"let g:tagbar_compact=1

" Map
nnoremap <leader>; A;<esc>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>

" Coc Config
source ~/.config/nvim/config/coc.vim
