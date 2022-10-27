# TERM=xterm-kitty

# Language
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# "bat" as manpager
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

HOMEBREW_NO_AUTO_UPDATE=1

# PATH
export PATH=$HOME/.local/bin:$PATH
export PATH="/usr/local/share/npm/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="$HOME/.gem/ruby/2.6.0/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="~/.emacs.d/bin:$PATH"

# C includes
export C_INCLUDE_PATH=/usr/local/include

# Flask
export FLASK_APP=application.py

# Sets the default text editor to nvim
export VISUAL=lvim;
export EDITOR=lvim;

# ASDF
# . /usr/local/opt/asdf/asdf.sh

# Z
. /usr/local/etc/profile.d/z.sh

# Sets cursor for zsh vi mode
ZVM_INSERT_MODE_CURSOR=$ZVM_CURSOR_UNDERLINE
ZVM_NORMAL_MODE_CURSOR=$ZVM_CURSOR_BLOCK
ZVM_OPPEND_MODE_CURSOR=$ZVM_CURSOR_BEAM

export PATH="$HOME/.asdf/installs/rust/1.60.0/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
