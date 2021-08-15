alias vi='nvim'
alias py="Python"

# Prevent brew from updating every time
alias brew='HOMEBREW_NO_AUTO_UPDATE=1 brew'

# ls
alias ls='lsd --group-dirs first'
alias cat='bat -p'

# Useful
alias mv="mv -iv"
alias cp="cp -riv"
alias rm="rm -v"
alias df="df -h"
alias du="du -h"

# Colorize grep output
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"

# Alt server
alias refreshapp='open -a AltServer.app; open -a mail'

# Useful Directories
alias downloads='~/Downloads'
alias pictures='~/Pictures'
alias desktop='~/Desktop'
alias blog='~/Developer/Blog/content/articles'
alias developer='~/Developer'
alias concepts='~/Developer/Concepts'
alias projects='~/Developer/Projects'
alias icloud='~/Library/Mobile¥ Documents/com~apple~CloudDocs/'
alias dotfiles='~/.dotfiles'
alias tmp='~/tmp'

# Config
alias zshrc='nvim ~/.config/zsh/.zshrc'
alias aliases='nvim ~/.config/zsh/aliases.zsh'
alias exports='nvim ~/.config/zsh/exports.zsh'
alias kittyconfig='nvim ~/.config/kitty/kitty.conf'
alias tmuxconf='nvim ~/.config/tmux/.tmux.conf'
alias initvim='nvim ~/.config/nvim/init.vim'
alias plugins='nvim ~/.config/nvim/config/plugins.vim'
alias karabiner='nvim ~/.config/karabiner/karabiner.json'

# Gdb quiet
alias gdb='gb -q'

# Youtube-dl
# alias videodl='youtube-dl -f best '
# alias audiodl='youtube-dl -x --audio-format mp3 '
