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
"map <F8> :w <CR> :!clang % -o %< -lcs50 && ./%< <CR> " Runs on vim

" Runs inside floaterm
nmap <C-l> :w <CR> :!clang % -lcs50 <CR>
nmap <C-k> :FloatermNew --height=0.9 --width=0.9 <CR> ./a.out <CR>

" Autosave
let g:auto_save = 1
