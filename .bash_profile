#
# ~/.bash_profile
#

PATH="$PATH:/home/thomas/node-v8.11.1-linux-x64/bin:/home/thomas/bin"

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx > /dev/null 2>&1
fi
