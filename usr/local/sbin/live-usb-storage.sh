#!/bin/bash

LIVE=$HOME/Live-usb-storage

if [ -d "$LIVE/.config/dconf" ] ; then
    rm -R $HOME/.config/dconf && ln -s $LIVE/.config/dconf $HOME/.config/dconf
fi

if [ -d "$LIVE/.local/share/gnome-shell" ] ; then
    rm -R $HOME/.local/share/gnome-shell && ln -s $LIVE/.local/share/gnome-shell $HOME/.local/share/gnome-shell
fi

if [ -d "$LIVE/.local/share/application" ] ; then
    rm -R $HOME/.local/share/application && ln -s $LIVE/.local/share/application $HOME/.local/share/application
fi

if [ -d "$LIVE/.vscode-oss" ] ; then
    ln -s $LIVE/.vscode-oss $HOME/
    if [ -e "$LIVE/.vscode-oss/settings.json" ] ; then
        mkdir -p $HOME/.config/VSCodium/User && ln -s $LIVE/.vscode-oss/settings.json $HOME/.config/VSCodium/User/settings.json
    fi
fi
