# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source "$HOME/.aliases"

export EDITOR=/usr/bin/vim
export MC_SKIN=$HOME/.config/mc/solarized.ini

stty -ixon

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\u@\h \[\e[32m\]\W \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "

function smith {
   if [ -z "$SSH_AUTH_SOCK" ] ; then
      eval `ssh-agent -s`
      ssh-add ~/.ssh/id_dsa
   fi
}

eval $(keychain --eval --quiet --noask id_dsa)

function fcd {
    cd `find . -type d 2>/dev/null | fzf`
}

function fv {
    vi `fzf 2>/dev/null`
}

source /usr/share/bash-completion/completions/pass
source /usr/share/bash-completion/completions/git
