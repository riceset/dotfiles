" Themes

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
