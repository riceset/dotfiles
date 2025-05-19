autoload -U colors && colors
#PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
PS1="$ "
# Starship
eval "$(starship init zsh)"

# Window Title
# echo -ne "\033]0;riceset\007"
echo -ne "\033]0;riceset@MacBook\007"
#
# case "$TERM" in
#     xterm*|rxvt*)
#         function xtitle () {
#             builtin print -n -- "\e]0;$@\a"
#         }
#         ;;
#     screen)
#         function xtitle () {
#             builtin print -n -- "\ek$@\e\\"
#         }
#         ;;
#     *)
#         function xtitle () {
#         }
# esac

# function precmd () {
#     xtitle "$(print -Pn "\e$USER@$HOST in %3~\a")"

# }
#  function preexec () {
#      xtitle "$(print -P "$USER@$HOST running '$1'")"
# }
