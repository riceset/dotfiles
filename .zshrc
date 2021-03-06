#       _                    _
#  _ __(_) ___ ___  ___  ___| |_
# | '__| |/ __/ _ \/ __|/ _ \ __|
# | |  | | (_|  __/\__ \  __/ |_ 
# |_|  |_|\___\___||___/\___|\__|


### ZSH Configuration File ###

### MANPAGER ###

### "bat" as manpager
# export MANPAGER="sh -c 'col -bx | bat -l man -p'"

### "vim" as manpager
# export MANPAGER='/bin/bash -c "vim -MRn -c \"set buftype=nofile showtabline=0 ft=man ts=8 nomod nolist norelativenumber nonu noma\" -c \"normal L\" -c \"nmap q :qa<CR>\"</dev/tty <(col -b)"'

### "nvim" as manpager
 export MANPAGER="nvim -c 'set ft=man' -"

### navigation ###
alias ..='cd ..' 
alias ...='cd ../..'

### Git ###
alias add='git add .'
alias commit='git commit -m'
alias branch='git branch'
alias fetch='git fetch'
alias status='git status'
alias pull='git pull'
alias push='git push'
alias all='git add . && git commit -m'
alias clone='git clone'

if [[ $TERM_PROGRAM != 'vscode' ]]; then

###Pfetch
PF_INFO="ascii title kernel os memory uptime pkgs shell" PF_ASCII="macos" PF_COL1=4 PF_COL3=2 /usr/local/bin/pfetch

fi

###Oh my zsh

export ZSH="/Users/riceset/.oh-my-zsh"
plugins=(git)
source $ZSH/oh-my-zsh.sh

### Added by Zinit's installer

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
### End of Zinit's installer chunk

### Plugins ###
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light zdharma/fast-syntax-highlighting
#zinit light jeffreytse/zsh-vi-mode
### Starship:
eval "$(starship init zsh)"

###Blocks brew from updating every time:
alias brew='HOMEBREW_NO_AUTO_UPDATE=1 brew'

###Flutter SDK:
export PATH="$PATH:/Users/riceset/FlutterSDK/flutter/bin"
export PATH="/usr/local/sbin:$PATH"

###Tmux
#Automatically starts tmux:

#if [ "$TMUX" = "" ]; then tmux; fi


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

### rickroll ###
alias rickroll='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'

### Media ###
alias photo='open -a preview'
alias jpg='open -a preview *jpg'
alias png='open -a preview *png'
alias jpeg='open -a preview *jpeg'
alias listen='open -a "Quicktime Player" '
alias book='open -a books'
alias finder='open -a finder'
alias code='open -a "Visual Studio Code" '
### Youtube-dl ###
alias videodl='youtube-dl -f best '
alias audiodl='youtube-dl -x --audio-format mp3 '

### Alt server ###
alias refreshapp='open -a AltServer.app; open -a mail'

### Language learning ###
alias study='open -a Anki.app; open -a photos; open -a Drafts.app'

### Sets "n" to open neovim ###
alias n='nvim'

### Useful Directories ###
alias download='cd ~/Downloads'
alias picture='cd ~/Pictures'
alias dot='cd ~/developer/others/dotfiles'
alias desktop='cd ~/Desktop'
alias dev='cd ~/Developer'
alias internal='cd ~/Internal'
alias dev='cd ~/Developer'
alias c='cd ~/Developer/Harvard-CS50/C'
alias clones='cd ~/Developer/clones'
alias external='cd /volumes/OKONOMIYAKI/external'
alias music='cd ~/Music/study'

### Open Files ###
alias zshrc='cd ~ && n .zshrc'
alias initvim='cd ~/.config/nvim && n init.vim'

### Others ###
alias l='ls -a'
alias pip='python3 -m pip'
