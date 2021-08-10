" Open by default
autocmd VimEnter * NERDTree

" Opens nerdtree on a new tab automatically
autocmd BufWinEnter * NERDTree | wincmd p

" Moves the cursor to the file instead of NERDTree when opening a new file
autocmd VimEnter * wincmd p

" Quits nerd tree when quitting vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Size
let g:NERDTreeWinSize=22

" Removes help message
let NERDTreeMinimalUI=1

" Removes Path
let NERDTreeStatusline="%{matchstr(getline('.'), 'szsw(.*)')}"

""" Tagbar
"autocmd VimEnter * Tagbar
" let g:is_tagbar=0

" Size
" let g:tagbar_width=22

" Removes help message
" let g:tagbar_compact=1
