<div align="center">

# evutils

[Features](#features) • [Installation](#installation) • [Configuration](#configuration)

</div>

Utilitiy POSIX shell scripts for linux.

These scripts serve as a wrapper for several programs to add additional
functionality or to improve ease of use.

Documentation can be found within the scripts inside `src`.


## Table of Contents

- [Features](#features)
- [Installation](#installation)
    * [Dependencies](#dependencies)
- [Configuration](#configuration)

## Features

#### `evar`
- Archive files.

#### `evaudio`
- Set the audio output to use, using a menu.

#### `evbm`
- Select and open a bookmarked link into a browser.

#### `evbrowser`
- A wrapper for opening browsers. This allows for easily switching which browser
to use and open links.

#### `evclip`
- Copy text, path to a file or the current working directory to clipboard.

#### `evcolp`
- Select and pick a colour from the screen.

#### `evctl`
- Run commmands that control the behaviour of the other evutils scripts.

#### `evdl`
- A wrapper for using using `yt-dlp`.

#### `eved`
- A wrapper for opening a terminal editor.

#### `evemoji`
- Select an emoji from a menu and copy it to clipboard.

#### `evfm`
- A wrapper for opening a terminal file manager.

#### `evl`
- Launch executables found in `PATH` using a menu.

#### `evman`
- A wrapper for using `man`. Can be used to search for a man page using a menu.

#### `evmenu`
- A wrapper for using `rofi` as a GUI menu and `fzf` as a terminal menu.

#### `evmk`
- A wrapper for creating files or directories.

#### `evmount`
- A wrapper for mounting removable USB devices or android devices.

#### `evop`
- Open files using their respective programs.

#### `evpass`
- A wrapper for using rofi as a password entry prompt.

#### `evpause`
- A wrapper for pausing, playing or stopping media players.
- Useful when there are multiple media players running.

#### `evrn`
- A useful way to rename a file or multiple files in a terminal editor.

#### `evsearch`
- Search for files.

#### `evsl`
- A wrapper for setting the X screen layout.

#### `evspeedtest`
- A wrapper for getting your network speed info using `speedtest`.

#### `evterm`
- A wrapper for opening a terminal.

#### `evvar`
- View contents of an archive file.

#### `evwall`
- A wallpaper setter.

#### `evwkill`
- Kill windows.

#### `evwrite`
- Write text inside a terminal editor and have it's contents copied to clipboard.
- Useful when you want to input text somewhere else but would prefer to use your
favourite terminal editor for it.

#### `evxar`
- Extract archive files.

## Installation

Clone repository run `make install`.

```sh
git clone https://github.com/eb3ev/evutils
cd evutils
make install
```

Export environment variable `EVUTILS_HOME` that contains the path to the cloned
repository directory.

```sh
# e.g. ~/.profile

export EVUTILS_HOME="/path/to/evutils"
```

Add `$EVUTILS_HOME/bin` to `PATH`

```sh
export PATH="$PATH:$EVUTILS_HOME/bin"
```

Or alternatively move contents of `$EVUTILS_HOME/bin` to a directory within `PATH`
variable.

### Dependencies

*The following are based on pacman and AUR packages*

- [`fzf`](https://github.com/junegunn/fzf)
- [`rofi`](https://github.com/davatorium/rofi)
- [`fd`](https://github.com/sharkdp/fd)
- [`devour`](https://github.com/salman-abedin/devour) *(Optional: required for 
window swallowing)*
- `udisksctl` from [`udisks2`](https://archlinux.org/packages/extra/x86_64/udisks2/)
- [`simple-mtpfs`](https://github.com/phatina/simple-mtpfs) *(Optional: required
for mounting android devices via MTP)*
- [`colorpicker`](https://github.com/Jack12816/colorpicker)
- `sudoedit` and `sudo` from [`sudo`](https://archlinux.org/packages/core/x86_64/sudo/) 
*(Optional: required for --root option for `evrename` and `eved`)
- [`xwallpaper`](https://github.com/stoeckmann/xwallpaper)
- `speedtest` from [`speedtest-cli`](https://archlinux.org/packages/extra/any/speedtest-cli/)
- [`playerctl`](https://github.com/altdesktop/playerctl)
- `pactl` from [`libpulse`](https://archlinux.org/packages/extra/x86_64/libpulse/)
- `notify-send` from [`libnotify`](https://archlinux.org/packages/extra/x86_64/libnotify/)
- [`xclip`](https://github.com/astrand/xclip)
- [`wmctrl`](https://archlinux.org/packages/extra/x86_64/wmctrl/)
- `xrandr` from [`xorg-xrandr`](https://archlinux.org/packages/extra/x86_64/xorg-xrandr/)
- `man` from [`man-db`](https://archlinux.org/packages/core/x86_64/man-db/)
- [`tar`](https://archlinux.org/packages/core/x86_64/tar/)
- [`gzip`](https://archlinux.org/packages/core/x86_64/gzip/)
- [`bzip2`](https://archlinux.org/packages/core/x86_64/bzip2/) *(Optional: 
required for archiving, extracting or viewing `.tar.bz2` files)*
- `7z` from [`p7zip`](https://archlinux.org/packages/extra/x86_64/p7zip/) 
*(Optional: required for extracting `.7z` files)*
- `rar` and `unrar` from [`rar`](https://aur.archlinux.org/packages/rar) *(Optional: 
required for archiving, extracting or viewing `.rar` files)*
    * Or just `unrar` from [`unrar`](https://archlinux.org/packages/extra/x86_64/unrar/)
    *(Optional: required for extracting or viewing `.rar` files)*
- [`unzip`](https://archlinux.org/packages/extra/x86_64/unzip/) *(Optional: 
required for extracting or viewing `.zip` files)*
- [`zip`](https://archlinux.org/packages/extra/x86_64/zip/) *(Optional: required
for archiving `.zip` files)*

*The following are based on pip packages*

- [`yt-dlp`](https://github.com/yt-dlp/yt-dlp)

```sh
# pacman packages

sudo pacman -S --needed fd fzf rofi udisks2 colorpicker xwallpaper speedtest-cli playerctl libpulse libnotify xclip wmctrl xorg-xrandr man-db tar gzip
```

```sh
# Optional pacman packages

sudo pacman -S --needed bzip2 p7zip unzip zip sudo
```

```sh
# Optional AUR packages via paru

paru -S --needed simple-mtpfs rar devour
```

```sh
# pip packages

pipx install yt-dlp
```

## Configuration

- Example configuration file found in `examples/rc`. Place this configuration file
inside `$XDG_CONFIG_HOME/evutils` or `$HOME/.config/evutils`.
- To set bookmarks, see `examples/bookmarks`.
- To set screen layout presets, see `examples/screenlayout-presets`.
- To set wallpaper presets, see `examples/wallpaper-presets`.

