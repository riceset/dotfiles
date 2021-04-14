call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'Raimondi/delimitMate'
Plug 'crusoexia/vim-monokai'
Plug 'NLKNguyen/papercolor-theme'
Plug 'ayu-theme/ayu-vim'
Plug 'mcmartelle/vim-monokai-bold'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'Yavor-Ivanov/airline-monokai-subtle.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/AutoComplPop'
Plug 'severin-lemaignan/vim-minimap'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Yggdroot/indentLine'
call plug#end()

" indentLine
let g:indentLine_char = '⎸'
" Vim devicons
set encoding=UTF-8

" Open NERDTree by default
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" Quits nerd tree when quitting vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" window size
let g:NERDTreeWinSize=22
" Removes help message
let NERDTreeMinimalUI=1

set hidden
set number
set relativenumber
syntax on

set termguicolors  " enable true colors support

colorscheme monokai-bold
let g:airline_theme='virtualenv'
" Transparent
"let g:airline_theme = 'monokai_subtle'

hi Normal guibg=NONE ctermbg=NONE
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

"language en_US

" Transparency
highlight clear LineNr
highlight clear SignColumn
highlight clear CursorLineNR

" Next Line
inoremap <expr> <cr> getline(".")[col(".")-2:col(".")-1]=="{}" ? "<cr><esc>O" : "<cr>"

" Hides bottom text INSERT etc
set noshowmode

" Compile C
map <F8> :w <CR> :!gcc % -o %< && ./%< <CR>
