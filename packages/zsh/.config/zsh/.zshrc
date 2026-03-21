#            _
#    _______| |__  _ __ ___
#   |_  / __| '_ \| '__/ __|
#  _ / /\__ \ | | | | | (__
# (_)___|___/_| |_|_|  \___|

source "$ZDOTDIR/functions.zsh"

add_plugin "zsh-users/zsh-syntax-highlighting"

add_file "aliases.zsh"
add_file "exports.zsh"
add_file "prompt.zsh"
add_file "tabcomp.zsh"

source ~/.z.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
