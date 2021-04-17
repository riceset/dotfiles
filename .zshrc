#       _                    _
#  _ __(_) ___ ___  ___  ___| |_
# | '__| |/ __/ _ \/ __|/ _ \ __|
# | |  | | (_|  __/\__ \  __/ |_
# |_|  |_|\___\___||___/\___|\__|

### "nvim" as manpager
export MANPAGER="nvim -c 'set ft=man' -"

### navigation
alias dl="cd ~/Downloads"
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

### Hides pfetch on vscode
if [[ $TERM_PROGRAM != 'vscode' ]]; then
### Pfetch
PF_INFO="ascii title kernel os memory uptime pkgs shell" PF_ASCII="macos" PF_COL1=4 PF_COL3=2 /usr/local/bin/pfetch
fi

### Oh my zsh
export ZSH="/Users/riceset/.oh-my-zsh"
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
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light zdharma/fast-syntax-highlighting
zinit light jeffreytse/zsh-vi-mode

### Starship:
eval "$(starship init zsh)"

### Blocks brew from updating every time
alias brew='HOMEBREW_NO_AUTO_UPDATE=1 brew'

### Flutter SDK:
export PATH="$PATH:/Users/riceset/FlutterSDK/flutter/bin"
export PATH="/usr/local/sbin:$PATH"

### Tmux
#Automatically starts tmux:

#if [ "$TMUX" = "" ]; then tmux; fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

### rickroll
alias rickroll='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'

### Media
alias photo='open -a preview'
alias video='open -a "Quicktime Player" '
alias finder='open -a finder'
alias code='open -a "Visual Studio Code" '
alias notes='open -a notes'

### ls
alias ls='lsd --group-dirs first'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

### cat
alias cat='bat'

### Useful
alias mv="mv -iv"
alias cp="cp -riv"

### Youtube-dl
alias videodl='youtube-dl -f best '
alias audiodl='youtube-dl -x --audio-format mp3 '

### Alt server
alias refreshapp='open -a AltServer.app; open -a mail'

### Language learning
alias study='open -a Anki.app; open -a Drafts.app'

### Sets "n" to open neovim
alias n='nvim'

### Useful Directories
alias downloads='~/Downloads'
alias pictures='~/Pictures'
alias desktop='~/Desktop'
alias c='~/C'
alias blog='~/Blog'
alias developer='~/Developer'
alias harvard='~/Harvard-CS50'
alias music='~/Music/Study'
alias external='/volumes/OKONOMIYAKI/external'
alias zshrc='cd ~ && n .zshrc'
alias init='cd ~/.config/nvim/ && nvim init.vim'
alias alacritty='cd ~/.config/alacritty/ && nvim alacritty.yml'
alias icloud='~/Library/Mobile\ Documents/com~apple~CloudDocs/'
alias karabiner='cd ~/.config/karabiner && v karabiner.json'

### Pip
alias pip='python3 -m pip'

### touch and open a file on VSCode
t() { [[ ! -f "$1" ]] && touch "$1"; code "$1"; }

### New Article
alias article='cd ~/Blog/_posts'

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

# iTerm
### Images
function imginfo() {
    imgcat $1 && sips --getProperty pixelHeight --getProperty pixelWidth $1;
}
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/2.7.0/bin:$PATH"
source $(dirname $(gem which colorls))/tab_complete.sh
export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/2.6.3/bin:$PATH"
alias lc='colorls -lA --sd'

# zsh vi mode
#bindkey -v
#export KEYTIMEOUT=1

# make
export CFLAGS="-ggdb -std=c99 -Wall -Werror -lcs50 -lm"

# compile and run
r() { [[ ! -f "$1" ]] && make "$1"; ./$1 $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $16 $17 $18 $19 $20 $21 $22 $23 $24 $25 $26 $27 $28 $29 $30 $31 $32 $33 $34 $35 $36 $37 $38 $39 $40 $41 $42 $43 $44 $45 $46 $47 $48 $49 $50; rm -rf $1.dSYM}

# git lazy shortcut
function lazy() {
    git add .
    git commit -m "$1 $2 $3 $4 $5 $6 $7 $8 $9 $10"
    git push
}

export PATH=/usr/local/share/npm/bin:$PATH
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="$HOME/.gem/ruby/2.6.0/bin:$PATH"
