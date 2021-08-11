"  _       _ _               _
" (_)_ __ (_) |_      __   _(_)_ __ ___
" | | '_ \| | __|     \ \ / / | '_ ` _ \
" | | | | | | |_   _   \ V /| | | | | | |
" |_|_| |_|_|\__| (_)   \_/ |_|_| |_| |_|


" Import Plugins
call plug#begin()
Plug 'sheerun/vim-polyglot' "Provides some syntax highlighting
Plug 'Raimondi/delimitMate' "auto-completion for quotes, parens, brackets, etc
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons' "Adds file type icons to Vim plugins NERDTree, Airline etc
Plug 'airblade/vim-gitgutter' "Git information ~ + -
Plug 'tpope/vim-fugitive' "plugin for Git
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sainnhe/sonokai'
Plug 'voldikss/vim-floaterm'
Plug 'tpope/vim-commentary'
Plug 'jackguo380/vim-lsp-cxx-highlight' "Syntax highlighting for C
Plug '907th/vim-auto-save'
Plug 'kshenoy/vim-signature'
call plug#end()

colorscheme sonokai

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
set inccommand=split
set clipboard=unnamed
set hlsearch
set expandtab
let mapleader="\<space>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'
set laststatus=0 ruler
set nosmd
set noru
set clipboard=unnamedplus
language en_US
set tabstop=4
set softtabstop=4
set shiftwidth=4

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

" Autosave
let g:auto_save = 1

" THEME

set background=dark

" Airline Themes
let g:airline_theme = 'transparent'

" Sonokai
let g:sonokai_style = 'andromeda'
let g:sonokai_enable_italic = 1
let g:sonokai_transparent_background = 1
let g:sonokai_menu_selection_background = 'black'
let g:sonokai_sign_column_background = 'none'
let g:sonokai_current_word = 'bold'
let g:sonokai_disable_italic_comment = 1

" Italics (Syntax)

hi Conditional cterm=italic gui=italic
hi Include cterm=italic gui=italic
hi Statement cterm=italic gui=italic
hi Macro cterm=italic gui=italic
hi Repeat cterm=italic gui=italic
hi Type cterm=italic gui=italic
hi PreProc cterm=italic gui=italic
hi Comment cterm=italic gui=italic
hi Red cterm=italic gui=italic

" Hides the tilde sign on blank lines
" https://github.com/neovim/neovim/issues/2067
let &fcs='eob: '

" Disable trailing[1]
let g:airline#extensions#whitespace#enabled = 0
let g:jedi#completions_enabled = 0

" Transparency
source ~/.config/nvim/config/transparency.vim

" NERDTree and Tagbar
source ~/.config/nvim/config/nerdtree.vim

" Splits

" Open new split panes to right and bottom
set splitbelow
set splitright

" Navigation between splits using Control + vim keys
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Map
nnoremap <leader>; A;<esc>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <c-p> :Files<cr>

" Coc Config
source ~/.config/nvim/config/coc.vim

" Allows finding a file recursively
set path+=**

let g:airline#extensions#coc#enabled = 0

" Hides (AutoSave) saved at ??:??:??
let g:auto_save_silent = 1

" New tab
nnoremap <silent> <C-t> :tabnew<CR>

" Substitute
nnoremap <C-s> :%s//g<Left><Left>

" Vim-Signature colors based on GitGutter
let g:SignatureMarkTextHLDynamic = 1

" Airline tabs
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#show_buffers = 1
" let g:airline#extensions#tabline#show_splits = 0
" let g:airline#extensions#tabline#show_tabs = 0
" let g:airline#extensions#tabline#show_tab_count = 0
" let g:airline#extensions#tabline#show_tab_nr = 0
" let g:airline#extensions#tabline#show_tab_type = 0
" let g:airline#extensions#tabline#close_symbol = '×'
" let g:airline#extensions#tabline#show_close_button = 0
" let g:airline#extensions#tabline#buffer_min_count = 2
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = ' '
" let g:airline#extensions#tabline#right_sep = ' '
" let g:airline#extensions#tabline#right_alt_sep = ' '
