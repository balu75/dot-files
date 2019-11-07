# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source ".aliases"

PATH="$PATH:/home/thomas/node-v8.11.1-linux-x64/bin"

export TERM='xterm-256color'
export EDITOR=/usr/bin/vim

color_prompt=yes

parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
if [ "$color_prompt" = yes ]; then
 PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;31m\] $(parse_git_branch)\[\033[00m\]\$ '
else
 PS1='\u@\h:\w$(parse_git_branch)\$ '
fi
