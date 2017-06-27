#! /bin/bash
#exec i3
#case $WM in
#    gnome)
#        exec gnome-session;;
#    *)
#        exec i3;;
#esac

case $2 in
    gnome)
        exec gnome-session;;
    *)
        xbindkeys
        exec i3;;
esac
