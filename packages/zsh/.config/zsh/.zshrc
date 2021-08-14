#              _
#      _______| |__  _ __ ___
#     |_  / __| '_ \| '__/ __|
#  _   / /\__ \ | | | | | (__
# (_) /___|___/_| |_|_|  \___|


# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

### "nvim" as manpager
export MANPAGER="nvim -c 'set ft=man' -"

# TERM=xterm-256color
TERM=xterm-kitty

### Pfetch
if [[ $TERM_PROGRAM != 'vscode' ]]; then
    PF_INFO="ascii title kernel os memory uptime pkgs shell" PF_COL1=7 PF_COL3=7 /usr/local/bin/pfetch
fi

#### Oh my zsh
#export ZSH="$HOME/.oh-my-zsh"
#plugins=(git zsh-z)
#source $ZSH/oh-my-zsh.sh

#if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
#    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
#    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
#    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
#        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
#        print -P "%F{160}▓▒░ The clone has failed.%f%b"
#fi

#source "$HOME/.zinit/bin/zinit.zsh"
#autoload -Uz _zinit
#(( ${+_comps} )) && _comps[zinit]=_zinit

#### Plugins
##zinit light zsh-users/zsh-autosuggestions
#zinit light zsh-users/zsh-completions
#zinit light zdharma/fast-syntax-highlighting
#zinit light jeffreytse/zsh-vi-mode

## Sets cursor for zsh vi mode
#ZVM_INSERT_MODE_CURSOR=$ZVM_CURSOR_UNDERLINE
#ZVM_NORMAL_MODE_CURSOR=$ZVM_CURSOR_BLOCK
#ZVM_OPPEND_MODE_CURSOR=$ZVM_CURSOR_BEAM

### Starship prompt:
eval "$(starship init zsh)"

### Prevent brew from updating every time
alias brew='HOMEBREW_NO_AUTO_UPDATE=1 brew'

### ls
alias ls='lsd --group-dirs first'
alias cat='bat -p'

### Useful
alias mv="mv -iv"
alias cp="cp -riv"
alias rm="rm -v"

### Alt server
alias refreshapp='open -a AltServer.app; open -a mail'

### Sets "vi" to open neovim
alias vi='nvim'

### Useful Directories
alias downloads='~/Downloads'
alias pictures='~/Pictures'
alias desktop='~/Desktop'
alias blog='~/Developer/Blog/content/articles'
alias developer='~/Developer'
alias concepts='~/Developer/Concepts'
alias projects='~/Developer/Projects'
alias icloud='~/Library/Mobile\ Documents/com~apple~CloudDocs/'
alias dotfiles='~/.dotfiles'
alias tmp='~/tmp'

alias zshrc='nvim ~/.config/zsh/.zshrc'
alias kittyconfig='nvim ~/.config/kitty/kitty.conf'
alias tmuxconf='nvim ~/.config/tmux/.tmux.conf'
alias initvim='nvim ~/.config/nvim/init.vim'
alias karabiner='nvim ~/.config/karabiner/karabiner.json'

alias py="Python"

# make
# export CFLAGS="-ggdb -std=c99 -Wall -Werror -lcs50 -lm"

# Gdb quiet
alias gdb='gdb -q'

# git lazy shortcut
# function lazy() {
#     git add .;
#     git commit -m "$1 $2 $3 $4 $5 $6 $7 $8 $9 $10";
#     git push;
# }

# Clears the screen and runs pfetch
 function c() {
     clear;
 if [[ $TERM_PROGRAM != 'vscode' ]]; then
     PF_INFO="ascii title kernel os memory uptime pkgs shell" PF_COL1=7 PF_COL3=7 /usr/local/bin/pfetch
 fi
 }

export PATH=/usr/local/share/npm/bin:$PATH
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="$HOME/.gem/ruby/2.6.0/bin:$PATH"

export FLASK_APP=application.py

# ASDF
. /usr/local/opt/asdf/asdf.sh

# Sets the default text editor to nvim
export VISUAL=nvim;
export EDITOR=nvim;

export C_INCLUDE_PATH=/usr/local/include

# Runs tmux automatically
# if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
#   exec tmux new-session -A -s main
# fi

# Use vim keys in tab complete menu:
# bindkey -M menuselect 'h' vi-backward-char
# bindkey -M menuselect 'k' vi-up-line-or-history
# bindkey -M menuselect 'l' vi-forward-char
# bindkey -M menuselect 'j' vi-down-line-or-history
# bindkey -v '^?' backward-delete-char

# Edit line in vim with ctrl-t:
autoload edit-command-line; zle -N edit-command-line
bindkey '^t' edit-command-line
