call plug#begin()
Plug 'sheerun/vim-polyglot' "Provides some syntax highlighting
Plug 'Raimondi/delimitMate' "auto-completion for quotes, parens, brackets, etc
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons' "Adds file type icons to Vim plugins NERDTree, Airline etc
Plug 'airblade/vim-gitgutter' "Git information ~ + -
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'voldikss/vim-floaterm'
Plug 'tpope/vim-commentary'
Plug 'kshenoy/vim-signature'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug '907th/vim-auto-save'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive' "plugin for Git
Plug 'sainnhe/sonokai'
"Plug 'tomasr/molokai'
" Plug 'jackguo380/vim-lsp-cxx-highlight' "Syntax highlighting for C
"Plug 'preservim/nerdtree'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
call plug#end()
