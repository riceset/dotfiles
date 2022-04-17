# Navigation
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

# Prevent brew from updating every time
alias brew='HOMEBREW_NO_AUTO_UPDATE=1 brew'
alias wcc="cc -Wall -Wextra -Werror"
alias norm="norminette -R CheckForbiddenSourceHeader"
alias normh="norminette -R CheckDefine"
alias normall="norm ft*.c"
alias xx="wcc ft*.c main.c; ./a.out"
alias db="lldb -s <(echo 'target stop-hook add --one-liner \"frame variable\"')"
alias l='ls'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

alias c='clear'

# Useful
# alias mv='mv -iv'
# alias cp='cp -riv'
alias rm='rm -v'
alias ls='lsd --group-dirs first'
alias cat='bat -p'

# alias df='df -h'
# alias du='du -h'

alias vi='lvim'
alias py='Python'

# Colorize grep output
# alias grep='grep --color=auto'
# alias egrep='egrep --color=auto'
# alias fgrep='fgrep --color=auto'

# Useful Directories
alias downloads='~/Downloads'
alias pictures='~/Pictures'
alias desktop='~/Desktop'
alias blog='~/Developer/Blog/content/articles'
alias developer='~/Developer'
alias concepts='~/Developer/Concepts'
alias projects='~/Developer/Projects'
alias icloud='~/Library/Mobile¥ Documents/com~apple~CloudDocs/'
alias vimconf='~/.config/nvim/config/'
alias dotfiles='~/.dotfiles'
alias tmp='~/tmp'

# Config
alias kittyconfig='nvim ~/.config/kitty/kitty.conf'
alias karabiner='nvim ~/.config/karabiner/karabiner.json'
alias tmuxconf='nvim ~/.config/tmux/.tmux.conf'

alias zshrc='nvim ~/.config/zsh/.zshrc'
alias aliases='nvim ~/.config/zsh/aliases.zsh'
alias exports='nvim ~/.config/zsh/exports.zsh'

alias initvim='nvim ~/.config/nvim/init.vim'
alias plugins='nvim ~/.config/nvim/config/plugins.vim'

# Gdb quiet
# alias gdb='gdb -q'

# rickroll
alias rickroll='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'

# Youtube-dl
# alias videodl='youtube-dl -f best '
# alias audiodl='youtube-dl -x --audio-format mp3 '
