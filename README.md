This is a personal respin configurations of MX Linux 25 with minimal Gnome for on-the-go use.
See [release page](https://github.com/foxihd/MX-Linux-GT/releases/tag/v1.0.0-MX25GT) to download and try this implementation.

Please use [MX Live USB Maker](https://mxlinux.org/blog/live-usb-maker-tool-now-available-as-an-appimage/) to enjoy the full featured mode.
Thus you can enable the following persistent feature for continous desktop use:

```
/
└── /home/demo/Live-usb-storage/
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
    │   └── settings.json               # auto-detected for codium settings.json
    ├── sync/
    │   └── vault.img                   # auto-mount vault.img for synchronizable virtual block device
    └── textsquash.sqsh                 # auto-mount textsquash.sqsh for TeXLive and gummy functionality
```
