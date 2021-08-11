" Vim color file
"
" Author: Tomas Restrepo <tomas@winterdom.com>
" https://github.com/tomasr/molokai
"
" Note: Based on the Monokai theme for TextMate
" by Wimer Hazenberg and its darker variant
" by Hamish Stuart Macpherson
"

hi clear

if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="molokai"

if exists("g:molokai_original")
    let s:molokai_original = g:molokai_original
else
    let s:molokai_original = 0
endif


hi Boolean         guifg=#AE81FF
hi Character       guifg=#E6DB74
hi Number          guifg=#AE81FF
hi String          guifg=#E6DB74
hi Conditional     guifg=#F92672               gui=italic
hi Constant        guifg=#AE81FF               gui=bold
hi Cursor          guifg=#000000 guibg=none
hi iCursor         guifg=#000000 guibg=none
hi Debug           guifg=#BCA3A3               gui=bold
hi Define          guifg=#66D9EF gui=italic
hi Delimiter       guifg=#8F8F8F
hi DiffAdd                       guibg=none
hi DiffChange      guifg=#89807D guibg=none
hi DiffDelete      guifg=#960050 guibg=none
hi DiffText                      guibg=none gui=italic,bold

hi GitGutterAdd guifg=#7DCE03
hi GitGutterDelete guifg=#FF006A
hi GitGutterChange guifg=#30D6F0
hi GitGutterChangeDelete guifg=#BB6DFF

" hi CocErrorSign  ctermbg=none guibg=none
" hi CocWarningSign  ctermbg=none guibg=none
" hi CocInfoSign ctermbg=none guibg=none
" hi CocHintSign  ctermbg=none guibg=none

hi Directory       guifg=#A6E22E               gui=bold
hi Error           guifg=#E6DB74 guibg=none
hi ErrorMsg        guifg=#F92672 guibg=none gui=bold
hi Exception       guifg=#FF006A               gui=italic
hi Float           guifg=#AE81FF
hi FoldColumn      guifg=#465457 guibg=none
hi Folded          guifg=#465457 guibg=none
hi Function        guifg=#A6E22E
hi Identifier      guifg=#FD971F
hi Ignore          guifg=#808080 guibg=none
hi IncSearch       guifg=#C4BE89 guibg=none

hi Keyword         guifg=#F92672               gui=italic
hi Label           guifg=#E6DB74               gui=italic
hi Macro           guifg=#C4BE89               gui=italic
hi SpecialKey      guifg=#66D9EF               gui=italic

hi MatchParen      guifg=#000000 guibg=#89807D gui=bold
hi ModeMsg         guifg=#E6DB74
hi MoreMsg         guifg=#E6DB74
hi Operator        guifg=#F92672

" complete menu
hi Pmenu           guifg=#66D9EF guibg=none
hi PmenuSel                      guibg=none
hi PmenuSbar                     guibg=none
hi PmenuThumb      guifg=#66D9EF

hi PreCondit       guifg=#A6E22E               gui=bold
hi PreProc         guifg=#A6E22E               gui=italic
hi Question        guifg=#66D9EF
hi Repeat          guifg=#F92672               gui=italic
hi Search          guifg=#000000 guibg=#FFE792
hi Visual          guibg=#1C2F2F
" marks
hi SignColumn      guifg=#A6E22E guibg=none
hi SpecialChar     guifg=#F92672               gui=bold
hi SpecialComment  guifg=#7E8E91               gui=bold
hi Special         guifg=#66D9EF guibg=bg      gui=italic
if has("spell")
    hi SpellBad    guisp=#FF0000 gui=undercurl
    hi SpellCap    guisp=#7070F0 gui=undercurl
    hi SpellLocal  guisp=#70F0F0 gui=undercurl
    hi SpellRare   guisp=#FFFFFF gui=undercurl
endif
hi Statement       guifg=#F92672               gui=italic
hi StatusLine      guifg=#455354 guibg=none
hi StatusLineNC    guifg=#808080 guibg=none
hi StorageClass    guifg=#FD971F               gui=italic
hi Structure       guifg=#66D9EF               gui=italic
hi Tag             guifg=#F92672               gui=italic
hi Title           guifg=#ef5939
hi Todo            guifg=#FFFFFF guibg=bg      gui=bold
hi Typedef         guifg=#66D9EF gui=italic
hi Type            guifg=#66D9EF               gui=italic
hi Include         guifg=#F92672               gui=italic
hi Underlined      guifg=#808080               gui=underline

hi VertSplit       guifg=#808080 guibg=none gui=bold
" hi VisualNOS                     guibg=403D3D
" hi Visual                        guibg=403D3D
hi WarningMsg      guifg=#FFFFFF guibg=none gui=bold
hi WildMenu        guifg=#66D9EF guibg=none

hi TabLineFill     guifg=#1B1D1E guibg=none
hi TabLine         guibg=none guifg=#808080 gui=none

if s:molokai_original == 1
   hi Normal          guifg=#F8F8F2 guibg=none
   hi Comment         guifg=#75715E gui=italic
   hi CursorLine                    guibg=none
   hi CursorLineNr    guifg=#FD971F               gui=none
   hi CursorColumn                  guibg=none
   hi ColorColumn                   guibg=none
   hi LineNr          guifg=#BCBCBC guibg=none
   hi NonText         guifg=#75715E
   hi SpecialKey      guifg=#75715E
else
   hi Normal          guifg=#F8F8F2 guibg=none
   hi Comment         guifg=#7E8E91 gui=italic
   hi CursorLine                    guibg=none
   hi CursorLineNr    guifg=#355359               gui=none
   hi CursorColumn                  guibg=none
   hi ColorColumn                   guibg=none
   hi LineNr          guifg=#465457 guibg=none
   hi NonText         guifg=#465457
   hi SpecialKey      guifg=#465457
end

"
" Support for 256-color terminal
"
if &t_Co > 255
   if s:molokai_original == 1
      hi Normal                   ctermbg=234
      hi CursorLine               ctermbg=235   cterm=none
      hi CursorLineNr ctermfg=208               cterm=none
   else
      hi Normal       ctermfg=252 ctermbg=233
      hi CursorLine               ctermbg=234   cterm=none
      hi CursorLineNr ctermfg=208               cterm=none
   endif
   hi Boolean         ctermfg=135
   hi Character       ctermfg=144
   hi Number          ctermfg=135
   hi String          ctermfg=144
   hi Conditional     ctermfg=161               cterm=bold
   hi Constant        ctermfg=135               cterm=bold
   hi Cursor          ctermfg=16  ctermbg=253
   hi Debug           ctermfg=225               cterm=bold
   hi Define          ctermfg=81
   hi Delimiter       ctermfg=241

   hi DiffAdd                     ctermbg=24
   hi DiffChange      ctermfg=181 ctermbg=239
   hi DiffDelete      ctermfg=162 ctermbg=53
   hi DiffText                    ctermbg=102 cterm=bold

   hi Directory       ctermfg=118               cterm=bold
   hi Error           ctermfg=219 ctermbg=89
   hi ErrorMsg        ctermfg=199 ctermbg=16    cterm=bold
   hi Exception       ctermfg=118               cterm=bold
   hi Float           ctermfg=135
   hi FoldColumn      ctermfg=67  ctermbg=16
   hi Folded          ctermfg=67  ctermbg=16
   hi Function        ctermfg=118
   hi Identifier      ctermfg=208               cterm=none
   hi Ignore          ctermfg=244 ctermbg=232
   hi IncSearch       ctermfg=193 ctermbg=16

   hi keyword         ctermfg=161               cterm=bold
   hi Label           ctermfg=229               cterm=none
   hi Macro           ctermfg=193
   hi SpecialKey      ctermfg=81

   hi MatchParen      ctermfg=233  ctermbg=208 cterm=bold
   hi ModeMsg         ctermfg=229
   hi MoreMsg         ctermfg=229
   hi Operator        ctermfg=161

   " complete menu
   hi Pmenu           ctermfg=81  ctermbg=16
   hi PmenuSel        ctermfg=255 ctermbg=242
   hi PmenuSbar                   ctermbg=232
   hi PmenuThumb      ctermfg=81

   hi PreCondit       ctermfg=118               cterm=bold
   hi PreProc         ctermfg=118
   hi Question        ctermfg=81
   hi Repeat          ctermfg=161               cterm=bold
   hi Search          ctermfg=0   ctermbg=222   cterm=NONE

   " marks column
   hi SignColumn      ctermfg=118 ctermbg=235
   hi SpecialChar     ctermfg=161               cterm=bold
   hi SpecialComment  ctermfg=245               cterm=bold
   hi Special         ctermfg=81
   if has("spell")
       hi SpellBad                ctermbg=52
       hi SpellCap                ctermbg=17
       hi SpellLocal              ctermbg=17
       hi SpellRare  ctermfg=none ctermbg=none  cterm=reverse
   endif
   hi Statement       ctermfg=161               cterm=bold
   hi StatusLine      ctermfg=238 ctermbg=253
   hi StatusLineNC    ctermfg=244 ctermbg=232
   hi StorageClass    ctermfg=208
   hi Structure       ctermfg=81
   hi Tag             ctermfg=161
   hi Title           ctermfg=166
   hi Todo            ctermfg=231 ctermbg=232   cterm=bold

   hi Typedef         ctermfg=81
   hi Type            ctermfg=81                cterm=none
   hi Underlined      ctermfg=244               cterm=underline

   hi VertSplit       ctermfg=244 ctermbg=232   cterm=bold
   hi VisualNOS                   ctermbg=238
   hi Visual                      ctermbg=235
   hi WarningMsg      ctermfg=231 ctermbg=238   cterm=bold
   hi WildMenu        ctermfg=81  ctermbg=16

   hi Comment         ctermfg=59
   hi CursorColumn                ctermbg=236
   hi ColorColumn                 ctermbg=236
   hi LineNr          ctermfg=250 ctermbg=236
   hi NonText         ctermfg=59

   hi SpecialKey      ctermfg=59

   if exists("g:rehash256") && g:rehash256 == 1
       hi Normal       ctermfg=252 ctermbg=234
       hi CursorLine               ctermbg=236   cterm=none
       hi CursorLineNr ctermfg=208               cterm=none

       hi Boolean         ctermfg=141
       hi Character       ctermfg=222
       hi Number          ctermfg=141
       hi String          ctermfg=222
       hi Conditional     ctermfg=197               cterm=bold
       hi Constant        ctermfg=141               cterm=bold

       hi DiffDelete      ctermfg=125 ctermbg=233

       hi Directory       ctermfg=154               cterm=bold
       hi Error           ctermfg=222 ctermbg=233
       hi Exception       ctermfg=154               cterm=bold
       hi Float           ctermfg=141
       hi Function        ctermfg=154
       hi Identifier      ctermfg=208

       hi Keyword         ctermfg=197               cterm=bold
       hi Operator        ctermfg=197
       hi PreCondit       ctermfg=154               cterm=bold
       hi PreProc         ctermfg=154
       hi Repeat          ctermfg=197               cterm=bold

       hi Statement       ctermfg=197               cterm=bold
       hi Tag             ctermfg=197
       hi Title           ctermfg=203
       hi Visual          ctermbg=238

       hi Comment         ctermfg=244
       hi LineNr          ctermfg=239 ctermbg=235
       hi NonText         ctermfg=239
       hi SpecialKey      ctermfg=239
   endif
end

" Must be at the end, because of ctermbg=234 bug.
" https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
set background=dark
