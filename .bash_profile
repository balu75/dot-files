#
# ~/.bash_profile
#

alias chpro='chromium --proxy-server="socks5://localhost:8080"' 

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx
fi
