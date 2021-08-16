call plug#begin()
Plug 'sheerun/vim-polyglot' "Provides some syntax highlighting
Plug 'Raimondi/delimitMate' "auto-completion for quotes, parens, brackets, etc
Plug 'vim-airline/vim-airline' "Line containing some information
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons' "Adds file type icons to Vim plugins NERDTree, Airline etc
Plug 'airblade/vim-gitgutter' "Git information ~ + -
Plug 'neoclide/coc.nvim', {'branch': 'release'} "IDE features
Plug 'voldikss/vim-floaterm' "terminal window inside vim with f2
Plug 'tpope/vim-commentary' "Comment with 'gcc'
Plug 'kshenoy/vim-signature' " Marks
Plug 'sainnhe/sonokai' "My Current theme
Plug 'tpope/vim-fugitive' "plugin for Git
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'} "ranger
Plug 'unblevable/quick-scope' "Highlight when using 'f' or 't'
call plug#end()
