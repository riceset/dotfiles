" highlight operators
syntax match _Operator "[-+&|<>=!\/~.,;:*%&^?\[\]]"

" Original
" syntax match _Operator "[-+&|<>=!\/~.,;:*%&^?()\[\]{}]"

" highlight methods
" syntax match _Paren "?=(" contains=cParen,cCppParen
" syntax match _memberFunc "\.\s*\w\+\s*(\@=" contains=_Operator,_Paren

" colors
" hi _memberFunc guifg=#0000FF guibg=NONE gui=none

" Sonokai
hi _Operator guifg=#fb617e guibg=NONE gui=none

" Molokai
" hi _Operator guifg=#FF006A guibg=NONE gui=none

" to resolve conflict with comment markers
syntax region _Comment start="\/\*" end="\*\/"
syntax match _Comment "\/\/.*$"
hi link _Comment Comment

" https://stackoverflow.com/questions/54685249/in-vim-how-to-highlight-the-user-defined-data-type
" syn match cType "\<[a-zA-Z_][a-zA-Z0-9_]*_[t]\>"
syn match cType "\<[stueg]_[a-zA-Z_][a-zA-Z0-9_]*\>"
