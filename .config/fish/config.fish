
export PATH="$PATH:/Users/riceset/development/Flutter/flutter/bin"

function fish_greeting
PF_INFO="ascii title kernel os memory uptime pkgs shell" PF_ASCII="macos" PF_COL1=4 PF_COL3=2 /usr/local/bin/pfetch
end

funcsave fish_greeting

starship init fish | source


