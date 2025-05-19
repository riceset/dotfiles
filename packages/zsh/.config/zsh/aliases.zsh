# Navigation
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

alias vi=nvim
alias wcc='cc -Wall -Wextra -Werror'
alias norm='norminette -R CheckForbiddenSourceHeader'
alias db="lldb -s <(echo 'target stop-hook add --one-liner \"frame variable\"')"

# ls
alias l='ls'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# ssh on kitty
alias s="kitty +kitten ssh"

# Useful
#alias make="compiledb make"
#alias omake="orb make"
alias orun="orb ./webserv"
alias mv='mv -iv'
alias cp='cp -riv'
alias rm='rm -v'
alias ls='lsd --group-dirs first'
alias df='df -h'
alias du='du -h'
alias ccc='clang++'
alias py='Python'
alias py3='Python3'
alias examshell='bash -c "$(curl https://grademe.fr)"'

# Useful Directories
alias dl='cd ~/Downloads'
alias pct='cd ~/Pictures'
alias dkt='cd ~/Desktop'
alias icloud='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/'
alias dtf='cd ~/.dotfiles'
alias tmp='cd ~/tmp'

# Config
alias kittyconfig='vi ~/.config/kitty/kitty.conf'
alias karabiner='vi ~/.config/karabiner/karabiner.json'
alias tmuxconf='vi ~/.config/tmux/.tmux.conf'

alias zshrc='vi ~/.config/zsh/.zshrc'
alias aliases='vi ~/.config/zsh/aliases.zsh'
alias exports='vi ~/.config/zsh/exports.zsh'
#alias clear='clear && pfetch'

# rickroll
alias rickroll='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'
