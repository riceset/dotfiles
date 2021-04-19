" NERDTree & Tagbar

" Open by default
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd VimEnter * Tagbar

" Quits nerd tree when quitting vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:is_tagbar=0

" window size
let g:NERDTreeWinSize=22
let g:tagbar_width=22

" Removes help message
let NERDTreeMinimalUI=1
let g:tagbar_compact=1

" Removes Path
"let NERDTreeStatusline="%{matchstr(getline('.'), 'szsw(.*)')}"
