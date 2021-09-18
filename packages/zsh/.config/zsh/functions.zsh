# add_file(), add_plugin(), add_completion() from https://github.com/ChristianChiarulli 

# Clears the screen and runs pfetch
# function clearpfetch() {
#      clear;
#  if [[ $TERM_PROGRAM != 'vscode' ]]; then
#      PF_INFO="ascii title kernel os memory uptime pkgs shell" \
#          PF_COL1=7 PF_COL3=7 /usr/local/bin/pfetch
#  fi
# }; clearpfetch

# Function to source files if they exist
function add_file() {
    [ -f "$ZDOTDIR/$1" ] && source "$ZDOTDIR/$1"
}

function add_plugin() {
    PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)
    if [ -d "$ZDOTDIR/plugins/$PLUGIN_NAME" ]; then 
        # For plugins
        add_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.plugin.zsh" || \
        add_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.zsh"
    else
        git clone "https://github.com/$1.git" "$ZDOTDIR/plugins/$PLUGIN_NAME"
    fi
}

function add_completion() {
    PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)
    if [ -d "$ZDOTDIR/plugins/$PLUGIN_NAME" ]; then 
        # For completions
		completion_file_path=$(ls $ZDOTDIR/plugins/$PLUGIN_NAME/_*)
		fpath+="$(dirname "${completion_file_path}")"
        add_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.plugin.zsh"
    else
        git clone "https://github.com/$1.git" "$ZDOTDIR/plugins/$PLUGIN_NAME"
		fpath+=$(ls $ZDOTDIR/plugins/$PLUGIN_NAME/_*)
        [ -f $ZDOTDIR/.zccompdump ] && $ZDOTDIR/.zccompdump
    fi
	completion_file="$(basename "${completion_file_path}")"
	if [ "$2" = true ] && compinit "${completion_file:1}"
}

# git lazy shortcut
# function lazy() {
#     git add .;
#     git commit -m "$1 $2 $3 $4 $5 $6 $7 $8 $9 $10";
#     git push;
# }
