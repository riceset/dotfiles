#              _
#      _______| |__  _ __ ___
#     |_  / __| '_ \| '__/ __|
#  _   / /\__ \ | | | | | (__
# (_) /___|___/_| |_|_|  \___|


### navigation
alias dl="cd ~/Downloads"
alias -g ...='cd ../..'
alias -g ....='cd ../../..'
alias -g .....='cd ../../../..'
alias -g ......='cd ../../../../..'

### "nvim" as manpager
export MANPAGER="nvim -c 'set ft=man' -"

TERM=xterm-256color

### Hides pfetch on vscode
if [[ $TERM_PROGRAM != 'vscode' ]]; then
### Pfetch
PF_INFO="ascii title kernel os memory uptime pkgs shell" PF_ASCII="macos" PF_COL1=5 PF_COL3=5 /usr/local/bin/pfetch
fi

### Oh my zsh
export ZSH="$HOME/.oh-my-zsh"
plugins=(git zsh-z)
source $ZSH/oh-my-zsh.sh

if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

### Plugins
# zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light zdharma/fast-syntax-highlighting
# zinit light jeffreytse/zsh-vi-mode

### Starship:
eval "$(starship init zsh)"

### Stops brew from updating every time
alias brew='HOMEBREW_NO_AUTO_UPDATE=1 brew'

### Flutter SDK:
export PATH="$PATH:/Users/riceset/FlutterSDK/flutter/bin"
export PATH="/usr/local/sbin:$PATH"

### ls
alias ls='lsd --group-dirs first'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

alias bat='bat -p'

### Useful
alias mv="mv -iv"
alias cp="cp -riv"

### Youtube-dl
alias videodl='youtube-dl -f best '
alias audiodl='youtube-dl -x --audio-format mp3 '

### Alt server
alias refreshapp='open -a AltServer.app; open -a mail'

### Sets "vi" to open neovim
alias vi='nvim'

### Useful Directories
alias downloads='~/Downloads'
alias pictures='~/Pictures'
alias desktop='~/Desktop'
alias blog='~/Developer/Blog'
alias developer='~/Developer'
alias zshrc='cd ~ && nvim .zshrc'
alias initvim='cd ~/.config/nvim/ && nvim init.vim'
alias alacritty='cd ~/.config/alacritty/ && nvim alacritty.yml'
alias icloud='~/Library/Mobile\ Documents/com~apple~CloudDocs/'
alias karabiner='cd ~/.config/karabiner && nvim karabiner.json'

### Pip
alias pip='python3 -m pip'

### touch and open a file on VSCode
t() { [[ ! -f "$1" ]] && touch "$1"; code "$1"; }

alias python="Python3"
alias py="Python3"

### Removes executable files
alias rmexec='find . -perm +100 -type f -delete'
alias cldir='rmexec && rm -rf *.dSYM'

### Git
alias add='git add .'
alias commit='git commit -m'
alias branch='git branch'
alias fetch='git fetch'
alias status='git status'
alias pull='git pull'
alias push='git push'
alias all='git add . && git commit -m'
alias clone='git clone'

# make
export CFLAGS="-ggdb -std=c99 -Wall -Werror -lcs50 -lm"

# compile and run
r() { [[ ! -f "$1" ]] && make "$1"; ./$1 $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $16 $17 $18 $19 $20 $21 $22 $23 $24 $25 $26 $27 $28 $29 $30 $31 $32 $33 $34 $35 $36 $37 $38 $39 $40 $41 $42 $43 $44 $45 $46 $47 $48 $49 $50; rm -rf $1.dSYM}

# Gdb quiet
alias gdb='gdb -q'

# git lazy shortcut
function lazy() {
    git add .;
    git commit -m "$1 $2 $3 $4 $5 $6 $7 $8 $9 $10";
    git push;
}

# Clears the screen and runs pfetch
function c() {
    clear;
if [[ $TERM_PROGRAM != 'vscode' ]]; then
    PF_INFO="ascii title kernel os memory uptime pkgs shell" PF_ASCII="macos" PF_COL1=5 PF_COL3=5 /usr/local/bin/pfetch
fi
}
alias clear="c"

export PATH=/usr/local/share/npm/bin:$PATH
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="$HOME/.gem/ruby/2.6.0/bin:$PATH"

export FLASK_APP=application.py

# Go
export GOPATH="$HOME/go"
PATH="$GOPATH/bin:$PATH"

# Ubuntu
alias ubuntu="docker exec -it 4f9066d297fbde5824c3c5463f16961d3579fe2e7f037cd47b60d1d34d090e2c /bin/sh"
