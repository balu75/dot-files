#
# ~/.bashrc
#
bind -x '"\C-e": clear'

# Git
alias gi="git init"
alias gs="git status"
alias gd="git diff"
alias gdh="git diff HEAD"
alias gc="git clone $1 $2"
alias gcm="git commit -m "$1""
alias gaa="git add -A ."
alias gpo="git push origin $1"
alias gl="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glo="git log --oneline"
alias grhh="git reset --hard HEAD"
alias gcp="git cherry-pick $1"

# npm
alias ni="npm install";
alias nis="npm i -S "
alias nid="npm i -D "
alias nig="npm i -g "
alias nr="npm run $1";
alias nrs="npm run start";
alias nrb="npm run build";
alias nrt="npm run test";
alias nrc="npm run commit";

# Clipboard
alias setclip='xclip -selection c'
alias getclip='xclip -selection clipboard -o'

# vim
alias v='vim'
alias vi="vim"

# Files
alias l="ls -l"

# Chromium with proxy
alias chpro='chromium --proxy-server="socks5://localhost:8080"'

# reboot, etc...
alias reboot="sudo systemctl reboot"
alias poweroff="sudo systemctl poweroff"
alias halt="sudo systemctl halt"

alias sagent="eval ssh-agent $SHELL"
alias cl="clear"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh

export EDITOR=/usr/bin/vim

PATH="$PATH:/home/thomas/node-v8.11.1-linux-x64/bin"
