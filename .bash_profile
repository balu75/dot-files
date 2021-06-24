#
# ~/.bash_profile
#

PATH="$PATH:$HOME/bin:$HOME/node/node-v14.17.1-linux-x64/bin:$HOME/node_modules/.bin"

[[ -f ~/.bash_profile_local ]] && . ~/.bash_profile_local

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx > /dev/null 2>&1
fi
