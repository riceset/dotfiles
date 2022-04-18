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
alias normall="norm ft*.c; normh *.h"
alias db="lldb -s <(echo 'target stop-hook add --one-liner \"frame variable\"')"

# ls
alias l='ls'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# Useful
alias mv='mv -iv'
alias cp='cp -riv'
alias rm='rm -v'
alias ls='lsd --group-dirs first'
alias df='df -h'
alias du='du -h'

alias vi='lvim'
alias py='Python'

# Useful Directories
alias dl='cd ~/Downloads'
alias pct='cd ~/Pictures'
alias dkt='cd ~/Desktop'
alias icloud='cd ~/Library/Mobile¥ Documents/com~apple~CloudDocs/'
alias dtf='cd ~/.dotfiles'
alias tmp='cd ~/tmp'

# Config
alias kittyconfig='vi ~/.config/kitty/kitty.conf'
alias karabiner='vi ~/.config/karabiner/karabiner.json'
alias tmuxconf='vi ~/.config/tmux/.tmux.conf'

alias zshrc='vi ~/.config/zsh/.zshrc'
alias aliases='vi ~/.config/zsh/aliases.zsh'
alias exports='vi ~/.config/zsh/exports.zsh'

# Gdb quiet
# alias gdb='gdb -q'

# rickroll
alias rickroll='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'

# Youtube-dl
# alias videodl='youtube-dl -f best '
# alias audiodl='youtube-dl -x --audio-format mp3 '
