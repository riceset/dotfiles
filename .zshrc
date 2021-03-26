#       _                    _
#  _ __(_) ___ ___  ___  ___| |_
# | '__| |/ __/ _ \/ __|/ _ \ __|
# | |  | | (_|  __/\__ \  __/ |_ 
# |_|  |_|\___\___||___/\___|\__|
## ZSH Configuration File

### "nvim" as manpager
export MANPAGER="nvim -c 'set ft=man' -"

### navigation
alias ..='cd ..' 
alias cd ...='cd ../..'
alias cd ....='cd ../../..'
alias cd .....='cd ../../../..'

### Hides pfetch on vscode
if [[ $TERM_PROGRAM != 'vscode' ]]; then
### Pfetch
PF_INFO="ascii title kernel os memory uptime pkgs shell" PF_ASCII="macos" PF_COL1=4 PF_COL3=2 /usr/local/bin/pfetch
fi

### Oh my zsh
export ZSH="/Users/riceset/.oh-my-zsh"
plugins=(git)
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
#zinit light jeffreytse/zsh-vi-mode

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
alias preview='open -a preview'
alias jpg='open -a preview *jpg'
alias png='open -a preview *png'
alias jpeg='open -a preview *jpeg'
alias quicktime='open -a "Quicktime Player" '
alias book='open -a books'
alias finder='open -a finder'
alias code='open -a "Visual Studio Code" '
alias v='code'
alias notes='open -a notes'

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

### Others
alias l='ls -l'
alias lsa='ls -la'

### Pip
alias pip='python3 -m pip'

### touch and open a file on VSCode
t() { [[ ! -f "$1" ]] && touch "$1"; code "$1"; }

export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="$HOME/.gem/ruby/2.6.0/bin:$PATH"

### New Article
alias article='cd ~/Blog/_posts && t '

### Tests
alias te='t t.c'

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

###iCloud Drive
alias icloud='~/Library/Mobile\ Documents/com~apple~CloudDocs/'

### Karabiner
alias karabiner='cd ~/.config/karabiner && v karabiner.json'

### Images
function imginfo() {
    imgcat $1 && sips --getProperty pixelHeight --getProperty pixelWidth $1;
}

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

