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

" Solarized
" hi _Operator guifg=#b32d2b guibg=NONE gui=none

" to resolve conflict with comment markers
syntax region _Comment start="\/\*" end="\*\/"
syntax match _Comment "\/\/.*$"
hi link _Comment Comment
