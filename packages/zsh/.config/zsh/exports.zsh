# TERM
TERM=xterm-kitty
# TERM=xterm-256color

# Language
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# "nvim" as manpager
export MANPAGER="nvim -c 'set ft=man' -"

# PATH
export PATH=/usr/local/share/npm/bin:$PATH
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="$HOME/.gem/ruby/2.6.0/bin:$PATH"

# C includes
export C_INCLUDE_PATH=/usr/local/include

# Flask
export FLASK_APP=application.py

# Sets the default text editor to nvim
export VISUAL=nvim;
export EDITOR=nvim;

# ASDF
. /usr/local/opt/asdf/asdf.sh

# Z
. /usr/local/etc/profile.d/z.sh

# Sets cursor for zsh vi mode
ZVM_INSERT_MODE_CURSOR=$ZVM_CURSOR_UNDERLINE
ZVM_NORMAL_MODE_CURSOR=$ZVM_CURSOR_BLOCK
ZVM_OPPEND_MODE_CURSOR=$ZVM_CURSOR_BEAM

# make
# export CFLAGS="-ggdb -std=c99 -Wall -Werror -lcs50 -lm"

# Pfetch
# if [[ $TERM_PROGRAM != 'vscode' ]]; then
#     PF_INFO="ascii title kernel os memory uptime pkgs shell" \
#         PF_COL1=7 PF_COL3=7 /usr/local/bin/pfetch
# fi
