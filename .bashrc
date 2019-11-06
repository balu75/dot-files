#
# ~/.bashrc
#
bind -x '"\C-e": clear'

source ".aliases"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh

export EDITOR=/usr/bin/vim

PATH="$PATH:/home/thomas/node-v8.11.1-linux-x64/bin"
