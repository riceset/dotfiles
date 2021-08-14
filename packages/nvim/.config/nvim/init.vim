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
let g:floaterm_keymap_toggle = '<F2>'
hi Red cterm=italic gui=italic
let &fcs='eob: ' " Hides the tilde sign on blank lines
let g:airline#extensions#coc#enabled = 0 " Disables CoC messages on Airline
let g:auto_save = 1 " Enables AutoSave
let g:auto_save_silent = 1 " Hides (AutoSave) saved at ??:??:??
let g:SignatureMarkTextHLDynamic = 1 " Vim-Signature colors based on GitGutter
hi CocFadeOut gui=undercurl
let g:airline_theme = 'transparent'

" Disable trailing[1]
let g:airline#extensions#whitespace#enabled = 0
let g:jedi#completions_enabled = 0

" Open new split panes to right and bottom
set splitbelow
set splitright

" Tabs to 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Fuzzy Finder
let mapleader="\<space>"
nmap <leader>f :FZF<CR>
nmap <leader>h :History<CR>

" Navigation between splits using Control + vim keys
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Next Line
inoremap <expr> <cr> getline(".")[col(".")-2:col(".")-1]=="{}" ? "<cr><esc>O" : "<cr>"

" Sonokai
if has('termguicolors')
    set termguicolors
endif

let g:sonokai_style = 'andromeda'
let g:sonokai_enable_italic = 1
let g:sonokai_transparent_background = 1
let g:sonokai_menu_selection_background = 'black'
let g:sonokai_sign_column_background = 'none'

colorscheme sonokai

" Shows the initial letter for a mode in Airline (e.g. NORMAL - N, INSERT - I)
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

" Additional Config
source ~/.config/nvim/config/transparency.vim
source ~/.config/nvim/config/coc.vim
