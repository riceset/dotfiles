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
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } "fuzzy finder
Plug 'junegunn/fzf.vim'
Plug '907th/vim-auto-save' "Autosaves
Plug 'sainnhe/sonokai' "My Current theme
Plug 'tpope/vim-fugitive' "plugin for Git
" Plug 'tpope/vim-surround'
"Plug 'tomasr/molokai'
" Plug 'jackguo380/vim-lsp-cxx-highlight' "Syntax highlighting for C
"Plug 'preservim/nerdtree'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
call plug#end()
