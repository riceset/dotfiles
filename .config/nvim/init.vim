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
Plug 'ryanoasis/vim-devicons' "Adds file type icons to Vim plugins NERDTree, Airline etc
Plug 'airblade/vim-gitgutter' "Git information ~ + -
Plug 'tpope/vim-fugitive' "plugin for Git
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'voldikss/vim-floaterm'
Plug 'tpope/vim-commentary'
Plug 'jackguo380/vim-lsp-cxx-highlight' "Syntax highlighting for C
Plug 'kshenoy/vim-signature'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tomasr/molokai'
Plug '907th/vim-auto-save'
 Plug 'tpope/vim-surround'
"Plug 'sainnhe/sonokai'
"Plug 'preservim/nerdtree'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
call plug#end()

colorscheme molokai
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
hi Directory guifg=none ctermfg=none
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

" Floaterm Shortcuts
let g:floaterm_keymap_toggle = '<F2>'
let g:floaterm_keymap_new    = '<F12>'
let g:floaterm_keymap_prev   = '<F9>'
let g:floaterm_keymap_next   = '<F10>'

" Next Line
inoremap <expr> <cr> getline(".")[col(".")-2:col(".")-1]=="{}" ? "<cr><esc>O" : "<cr>"

" Airline Themes
let g:airline_theme = 'transparent'

" Hides the tilde sign on blank lines
" https://github.com/neovim/neovim/issues/2067
let &fcs='eob: '

" Disable trailing[1]
let g:airline#extensions#whitespace#enabled = 0
let g:jedi#completions_enabled = 0

" Open new split panes to right and bottom
set splitbelow
set splitright

" Navigation between splits using Control + vim keys
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Allows finding a file recursively
set path+=**

" Disables CoC messages on Airline
let g:airline#extensions#coc#enabled = 0

" Enables AutoSave
let g:auto_save = 1
" Hides (AutoSave) saved at ??:??:??
let g:auto_save_silent = 1

" Vim-Signature colors based on GitGutter
let g:SignatureMarkTextHLDynamic = 1

let g:airline_mode_map = {
      \ '__'     : '-',
      \ 'c'      : 'C',
      \ 'i'      : 'I',
      \ 'ic'     : 'I',
      \ 'ix'     : 'I',
      \ 'n'      : 'N',
      \ 'multi'  : 'M',
      \ 'ni'     : 'N',
      \ 'no'     : 'N',
      \ 'R'      : 'R',
      \ 'Rv'     : 'R',
      \ 's'      : 'S',
      \ 'S'      : 'S',
      \ ''     : 'S',
      \ 't'      : 'T',
      \ 'v'      : 'V',
      \ 'V'      : 'V',
      \ ''     : 'V',
      \ }

" Coc Config
source ~/.config/nvim/config/coc.vim

" Fuzzy Finder
nmap <leader>f :FZF<CR>
nmap <leader>h :History<CR>
