call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'Raimondi/delimitMate'
Plug 'tomasiser/vim-code-dark'
Plug 'mcmartelle/vim-monokai-bold'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'Yavor-Ivanov/airline-monokai-subtle.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/AutoComplPop'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
call plug#end()

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

set termguicolors

set t_Co=256
set t_ut=
colorscheme codedark
"colorscheme monokai-bold
let g:airline_theme = 'transparent'

"let g:airline_theme='virtualenv'
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

" Theme
hi Normal       ctermbg=none  guibg=none
hi CursorLineNr               guibg=none
hi EndOfBuffer                guibg=none
hi Folded                     guibg=none
hi LineNr       ctermbg=none  guibg=none
hi SignColumn   ctermbg=none  guibg=none

" airline
hi airline_c       ctermbg=none guibg=none
hi airline_tabfill ctermbg=none guibg=none

" Next Line
inoremap <expr> <cr> getline(".")[col(".")-2:col(".")-1]=="{}" ? "<cr><esc>O" : "<cr>"

" Hides bottom text INSERT etc
set noshowmode

" Compile C
map <F8> :w <CR> :!clang % -o %< -lcs50 && ./%< <CR>

hi VertSplit ctermbg=none guibg=none

" Disable trailing[1]
let g:airline#extensions#whitespace#enabled = 0
