#
# ~/.bash_profile
#

PATH="$PATH:$HOME/bin"

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx > /dev/null 2>&1
fi
