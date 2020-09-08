#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

if [ -f "/usr/bin/VBoxClient-all" ]; then
    /usr/bin/VBoxClient-all &
fi

if [ -f "/usr/bin/clipmenud" ]; then
    /usr/bin/clipmenud &
fi

if [ -f "/home/thomas/suckless/bar/bar" ]; then
    /home/thomas/suckless/bar/bar &
fi

#/usr/local/bin/st -e /home/thomas/bin/tmux_start.sh&
#/usr/bin/chromium &

# switch caps lock to esc
setxkbmap -option caps:escape

exec dwm
#exec i3
