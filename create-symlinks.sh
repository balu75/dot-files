#!/bin/bash

function createln {
	ln -sf ~/dot-files/$1 ~/$1
}

createln .bashrc
createln .aliases
createln .tmux.conf
createln .vimrc
createln .bash_profile
createln .xinitrc
createln .Xresources
createln .xserverrc
