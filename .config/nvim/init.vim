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

" CONFIG

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
let g:nightflyUnderlineMatchParen = 1
let g:nightflyCursorColor = 1
let g:nightflyTransparent = 1
highlight SpecialKey ctermbg=none

" Airline Themes
let g:airline_theme = 'transparent'
"let g:airline_theme='virtualenv'
"let g:airline_theme = 'monokai_subtle'

" Sonokai
let g:sonokai_style = 'andromeda'
let g:sonokai_enable_italic = 1
let g:sonokai_transparent_background = 1
let g:sonokai_menu_selection_background = 'black'
let g:sonokai_sign_column_background = 'none'
let g:sonokai_current_word = 'bold'
let g:sonokai_disable_italic_comment = 1

" Nightfly
let g:nightflyCursorColor = 1
let g:nightflyUnderlineMatchParen = 1
let g:nightflyTransparent = 1
set background=dark

" Italics

hi Conditional cterm=italic gui=italic
hi Include cterm=italic gui=italic
hi Statement cterm=italic gui=italic
hi Macro cterm=italic gui=italic
hi Repeat cterm=italic gui=italic

" Disable trailing[1]
let g:airline#extensions#whitespace#enabled = 0
let g:jedi#completions_enabled = 0

" TRANSPARENCY

hi CocFloating       ctermbg=none guibg=none
hi ColorColumn       ctermbg=none guibg=none
hi NormalFloat       ctermbg=none guibg=none
hi CursorColumn      ctermbg=none guibg=none
hi CursorLine        ctermbg=none guibg=none
hi TabLine           ctermbg=none guibg=none

" airline
hi airline_c       ctermbg=none guibg=none
hi airline_tabfill ctermbg=none guibg=none

" Transparent completion
highlight Pmenu ctermbg=NONE guibg=none

" left symbols transparent
hi! CocErrorSign  ctermfg=none guifg=none guibg=none
hi! CocWarningSign  ctermfg=none guifg=none guibg=none
hi! CocInfoSign ctermfg=none guifg=none guibg=none
hi! CocHintSign  ctermfg=none guifg=none guibg=none

" transparent floating error/info/warning
hi CocInfoFloat guifg=none guibg=none
hi CocErrorFloat guifg=none guibg=none
hi CocWarningFloat guifg=none guibg=none
hi CocHintFloat guifg=none guibg=none

" Split
hi VertSplit ctermbg=none guibg=none

" Theme
hi Normal       ctermbg=none  guibg=none
hi CursorLineNr               guibg=none
hi EndOfBuffer                guibg=none
hi Folded                     guibg=none
hi LineNr       ctermbg=none  guibg=none

hi TabLineFill ctermbg=none
hi SignColumn   ctermbg=none  guibg=none
highlight NonText ctermbg=none
hi TabLineFill guibg=none ctermbg=none

hi BufferInactive guibg=none
hi BufferInactiveMod guibg=none
hi StatusLine guibg=none
hi StatusLineNC guibg=none
hi StatusLineTerm guibg=none
hi StatusLineTermNC guibg=none

" OTHERS

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
