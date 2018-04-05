#!/bin/bash

rm ~/.asoundrc
rm ~/.bash_profile
rm ~/.bashrc
rm ~/.tmux.conf
rm ~/.vimrc
rm ~/.xinitrc
rm ~/.Xresources
rm ~/.xserverrc
rm ~/.config/i3
rm ~/.config/powerline

ln -s ~/vc/dot-files/.asoundrc ~/.asoundrc
ln -s ~/vc/dot-files/.bash_profile ~/.bash_profile
ln -s ~/vc/dot-files/.bashrc ~/.bashrc
ln -s ~/vc/dot-files/.tmux.conf ~/.tmux.conf
ln -s ~/vc/dot-files/_vimrc ~/.vimrc
ln -s ~/vc/dot-files/.xinitrc ~/.xinitrc
ln -s ~/vc/dot-files/.Xresources ~/.Xresources
ln -s ~/vc/dot-files/.xserverrc ~/.xserverrc
ln -s ~/vc/dot-files/.config/i3 ~/.config/i3
ln -s ~/vc/dot-files/.config/powerline ~/.config/powerline
