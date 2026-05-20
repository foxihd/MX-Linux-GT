This is a personal respin configurations of MX Linux 25 with minimal Gnome for on-the-go use, read more on [my blog post](https://foxx.ink/en/2026/introducing-mx-linux-gt/).
See [release page](https://github.com/foxihd/MX-Linux-GT/releases) to download and try this implementation.

Please use [MX Live USB Maker](https://mxlinux.org/blog/live-usb-maker-tool-now-available-as-an-appimage/) to enjoy the full featured mode.
Thus you can enable the following persistent feature for continous desktop use:

```
/home/demo/Live-usb-storage/
├── .config/
│   └── dconf/                      # auto-detected for Low-level configuration system for GNOME
│       └── user
├── .local/
│   ├── bin/                        # put your appimage/binary here
│   │   ├── ...
│   │   ├── codium                  # codium appimage
│   │   ├── helium                  # helium appimage
│   │   └── my-app                  # other binaries
│   └── share/
│       ├── applications/           # auto-detected for desktop menu configuration & appimage link
│       │   └── my-app.desktop
│       └── gnome-shell/            # auto-detected for gnome-shell configuration
│           └── extensions/
├── .vscode-oss/                    # auto-detected for codium extensions
│   ├── keybindings.json            # auto-detected for codium keybindings.json
│   └── settings.json               # auto-detected for codium settings.json
├── dotfiles/                       # auto-detected for dotfiles
│   ├── .aliases
│   ├── .bash_aliases
│   ├── .bash_profile
│   ├── .bash_prompt
│   ├── .bashrc
│   ├── .curlrc
│   ├── .editorconfig
│   ├── .gitattributes
│   ├── .gitconfig
│   ├── .profile
│   ├── .vimrc
│   ├── .wgetrc
│   └── .zshrc                      # (zsh is not installed but link it anyway)
├── sync/
│   └── vault.img                   # auto-mount vault.img for synchronizable virtual block device
└── textsquash.sqsh                 # auto-mount textsquash.sqsh for TeXLive and gummy functionality
```