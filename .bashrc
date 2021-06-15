# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source "$HOME/.aliases"


export TERM='xterm-256color'

export EDITOR=/usr/bin/vim
export MC_SKIN=$HOME/.config/mc/solarized.ini
export KERN_API_PASSWD=3fm.yxjYkqRL

stty -ixon

export GIT_PS1_SHOWDIRTYSTATE=1
export PS1="\[\033[32m\]\W\[\033[33m\]\$(__git_ps1 ' (%s)')\[\033[00m\] $ "

function smith {
   if [ -z "$SSH_AUTH_SOCK" ] ; then
      eval `ssh-agent -s`
      ssh-add
   fi
}

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

export FZF_DEFAULT_COMMAND="find . -maxdepth 5"

function fid() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf-tmux +m) &&
  cd "$dir"
}

function fdd() {
  IFS=$'\n' files=($(fzf-tmux --query="$1" --multi --select-1 --exit-0))
  [[ -n "$files" ]] && cd "`dirname "${files[@]}"`"
}

fe() {
  IFS=$'\n' files=($(fzf-tmux --query="$1" --multi --select-1 --exit-0))
  [[ -n "$files" ]] && ${EDITOR:-vim} "${files[@]}"
}
