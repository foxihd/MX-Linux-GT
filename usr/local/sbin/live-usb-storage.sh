#!/bin/bash

LIVE=${HOME}/Live-usb-storage

# low-level gnome configuration
if [ -d "${LIVE}/.config/dconf" ] ; then
    rm -R "${HOME}/.config/dconf" && ln -s "${LIVE}/.config/dconf" "${HOME}/.config/dconf"
fi

# desktop files
if [ -d "${LIVE}/.local/share/application" ] ; then
    rm -R "${HOME}/.local/share/application" && ln -s "${LIVE}/.local/share/application" "${HOME}/.local/share/application"
fi

# gnome-shell configuration
if [ -d "${LIVE}/.local/share/gnome-shell" ] ; then
    rm -R "${HOME}/.local/share/gnome-shell" && ln -s "${LIVE}/.local/share/gnome-shell" "${HOME}/.local/share/gnome-shell"
fi

# codium settings & extension
if [ -d "${LIVE}/.vscode-oss" ] ; then
    ln -s "${LIVE}"/.vscode-oss "${HOME}/"
    cfgs=( "keybindings.json" "settings.json" ) 
    for cfg in "${cfgs[@]}"; do
        if [ -e "${LIVE}/.vscode-oss/${cfg}" ] ; then
            mkdir -p "${HOME}/.config/VSCodium/User" && ln -s "${LIVE}/.vscode-oss/${cfg}" "${HOME}/.config/VSCodium/User/${cfg}"
        fi
    done
fi

# other dotfiles
dotfiles=( ".aliases" ".bash_aliases" ".bash_profile" ".bash_prompt" ".bashrc" ".curlrc" ".editorconfig" ".gitattributes" ".gitconfig" ".profile" ".vimrc" ".wgetrc" ".zshrc" ) 
for dotfile in "${dotfiles[@]}"; do
    if [ -e "${LIVE}/dotfiles/${dotfile}" ] ; then
        rm "${HOME}/${dotfile}" && ln -sf "${LIVE}/dotfiles/${dotfile}" "${HOME}/${dotfile}"
    fi
done