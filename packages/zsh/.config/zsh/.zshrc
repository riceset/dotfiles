#            _
#    _______| |__  _ __ ___
#   |_  / __| '_ \| '__/ __|
#  _ / /\__ \ | | | | | (__
# (_)___|___/_| |_|_|  \___|

source "$ZDOTDIR/functions.zsh"

add_plugin "zsh-users/zsh-completions"
add_plugin "zdharma/fast-syntax-highlighting"
add_plugin "jeffreytse/zsh-vi-mode"

add_file "aliases.zsh"
add_file "exports.zsh"
add_file "prompt.zsh"

# some useful options (man zshoptions)
setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments
zle_highlight=('paste:none')

# Tab completion
autoload -U compinit
zstyle ':completion:*' menu select
compinit
_comp_options+=(globdots)		# Include hidden files.

# Ignoring case
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' '+m:{[:upper:]}={[:lower:]}'
