All packages listed here are the names of the packages either in the official
Arch package repository or the AUR. The AUR is used sparingly and will be
called out when used. They get installed and configured by default for you by
DotFriedRice but you can modify the list.

On Arch Linux you can run `pkg list` to see a list of top level packages you
have installed.

*Similar packages exist for Debian and macOS but not all packages below are
installed in these environments.*

# System / Service

| Package        | Description                                                   |
|:---------------|:--------------------------------------------------------------|
| base           | Minimal package set to define a basic Arch Linux installation |
| base-devel     | Basic tools to build Arch Linux packages                      |
| bluez          | Daemons for the bluetooth protocol stack                      |
| dnsmasq        | Lightweight, easy to configure DNS forwarder and DHCP server  |
| iptables       | Linux kernel packet control tool (using nft interface)        |
| iwd            | Internet Wireless Daemon                                      |
| lact           | Linux GPU Configuration Tool (supports AMD, NVIDIA and Intel) |
| libvirt        | API for controlling virtualization engines (kvm,qemu,etc)     |
| mpd            | Flexible, powerful, server-side application for playing music |
| mpd-mpris      | An implementation of the MPRIS protocol for MPD               |
| pacman-contrib | Contributed scripts and tools for pacman systems              |
| pipewire       | Low-latency audio/video router and processor                  |
| pipewire-alsa  | PipeWire ALSA configuration                                   |
| pipewire-jack  | PipeWire JACK replacement                                     |
| pipewire-pulse | PipeWire PulseAudio replacement                               |
| qemu-desktop   |  A QEMU setup for desktop environments                        |
| wireplumber    | Session and policy manager for PipeWire                       |

## Linux Kernel

This is picked by you during the `archinstall` script, typically it's the
mainline stable kernel which is the default `linux` package but it's up to you!
Other options are `linux-lts`, `linux-zen` and `linux-hardened`.

## GPU drivers

If needed, these get automatically installed for you by DotFriedRice.

# CLI

| Package                    | Description                                                                       |
|:---------------------------|:----------------------------------------------------------------------------------|
| aspell                     | General purpose spell checker                                                     |
| bat                        | Cat clone with syntax highlighting and git integration                            |
| bc                         | An arbitrary precision calculator language                                        |
| bind                       | Provides the `host`, `nslookup` and `dig` commands                                |
| brightnessctl              | Control monitor and other device brightness                                       |
| docker                     | Pack, ship and run any application as a lightweight container                     |
| docker-buildx              | Docker CLI plugin for extended build capabilities with BuildKit                   |
| docker-compose             | Fast, isolated development environments using Docker                              |
| eza                        | A modern replacement for ls (community fork of exa)                               |
| fastfetch                  | A feature-rich and performance oriented neofetch-like system information tool     |
| fd                         | Simple, fast and user-friendly alternative to find                                |
| ffmpeg                     | Complete solution to record, convert and stream audio and video                   |
| fontconfig                 | Library for configuring and customizing font access                               |
| git                        | The fast distributed version control system                                       |
| git-delta (`delta`)        | Syntax-highlighting pager for git and diff output                                 |
| go-yq (`yq`)               | Portable command-line YAML processor                                              |
| inotify-tools              | C library and command-line tools providing a simple interface to inotify          |
| jq                         | Command-line JSON processor                                                       |
| man-db (`man`)             | A utility for reading man pages                                                   |
| man-pages                  | Linux man pages                                                                   |
| mise                       | The front-end to your dev env                                                     |
| openbsd-netcat (`netcat`)  | TCP/IP swiss army knife (OpenBSD variant)                                         |
| openssh                    | SSH protocol implementation for remote login, command execution and file transfer |
| pwgen                      | Password generator for creating easily memorable passwords                        |
| ripgrep (`rg`)             | Search tool combining the usability of ag with the speed of grep                  |
| shellcheck                 | Shell script analysis tool                                                        |
| shfmt                      | Shell program formatter                                                           |
| smartmontools (`smartctl`) | Control and monitor S.M.A.R.T. enabled ATA and SCSI drives                        |
| strace                     | A diagnostic, debugging and instructional userspace tracer                        |
| tesseract                  | An OCR program                                                                    |
| timidity++                 | MIDI to WAVE converter and player                                                 |
| unzip                      | Extracting and viewing .zip archives                                              |
| usbutils (`lsusb`)         | USB tools to query connected USB devices                                          |
| wev                        | Tool for debugging Wayland events (similar to xev)                                |
| wget                       | Network utility to retrieve files from the web                                    |
| whois                      | Intelligent WHOIS client                                                          |
| wl-clipboard               | Command-line copy/paste utilities for Wayland                                     |
| yay-bin (`yay`)            | Pacman wrapper and AUR helper written in Go (pre-compiled)                        |
| yay-bin-debug              | Detached debugging symbols for yay-bin                                            |
| zip                        | Compressor/archiver for creating and modifying zip files                          |
| zsh                        | Advanced and programmable UNIX shell                                              |

# TUI

| Package               | Description                                                      |
|:--------------------- |:-----------------------------------------------------------------|
| bluetui               | Manage Bluetooth devices                                         |
| btop                  | A monitor of system resources                                    |
| fzf                   | Command-line fuzzy finder                                        |
| impala                | Manage Wi-Fi networks                                            |
| less                  | A terminal based program for viewing text files                  |
| libqalculate (`qalc`) | Multi-purpose desktop calculator                                 |
| neovim                | Fork of Vim aiming to improve user experience, plugins, and GUIs |
| rmpc                  | A beautiful and configurable TUI client for MPD                  |
| tmux                  | Terminal multiplexer                                             |
| wiremix               | Simple audio mixer for PipeWire                                  |

# GUI

## Desktop Environment

| Package                  | Description                                             |
|:-------------------------|:--------------------------------------------------------|
| mako                     | Lightweight notification daemon for Wayland             |
| niri                     | A scrollable-tiling Wayland compositor                  |
| swaybg                   | Wallpaper tool for Wayland compositors                  |
| swayidle                 | Idle management daemon for Wayland                      |
| swaylock                 | Screen locker for Wayland                               |
| uwsm                     | Standalone Wayland session manager                      |
| waybar                   | Highly customizable Wayland bar for wlroots compositors |
| wlrctl *(AUR)*           | Utility for miscellaneous wlroots extensions            |
| xdg-desktop-portal-gnome | GNOME backend for xdg-desktop-portal                    |
| xdg-desktop-portal-gtk   | GTK backend for xdg-desktop-portal                      |
| xdg-utils                | Assist applications with desktop integration tasks      |
| xwayland-satellite       | Xwayland outside your Wayland                           |

## Launcher

| Package                                  | Description                                |
|:-----------------------------------------|:-------------------------------------------|
| walker-bin *(AUR)*                       | Wayland application runner                 |
| elephant-bin *(AUR)*                     | General purpose datasource and executor    |
| elephant-calc-bin *(AUR)*                | Calc provider for elephant                 |
| elephant-clipboard-bin *(AUR)*           | Clipboard provider for elephant            |
| elephant-desktopapplications-bin *(AUR)* | Desktop applications provider for elephant |
| elephant-files-bin *(AUR)*               | Files provider for elephant                |
| elephant-menus-bin *(AUR)*               | Menus provider for elephant                |
| elephant-niriactions-bin *(AUR)*         | niriactions provider for elephant          |
| elephant-providerlist-bin *(AUR)*        | Providerlist provider for elephant         |
| elephant-runner-bin *(AUR)*              | Runner provider for elephant               |
| elephant-symbols-bin *(AUR)*             | Symbols provider for elephant              |
| elephant-unicode-bin *(AUR)*             | Unicode provider for elephant              |
| elephant-websearch-bin *(AUR)*           | Websearch provider for elephant            |
| elephant-windows-bin *(AUR)*             | Windows provider for elephant              |

## File manager

| Package               | Description                                                                 |
|:----------------------|:----------------------------------------------------------------------------|
| thunar                | Modern, fast and easy-to-use file manager for Xfce                          |
| ffmpegthumbnailer     | Lightweight video thumbnailer that can be used by file managers             |
| thunar-archive-plugin | Adds archive operations to Thunar context menus                             |
| tumbler               | Thumbnail service implementing the thumbnail management D-Bus specification |
| xarchiver             | GTK frontend to command-line archivers                                      |

## Capture

| Package       | Description                                                        |
|:--------------|:-------------------------------------------------------------------|
| grim          | Screenshot utility for Wayland                                     |
| satty         | Modern screenshot annotation tool inspired by Swappy and Flameshot |
| slurp         | Select a region in a Wayland compositor                            |
| hyprpicker    | A wlroots-compatible Wayland color picker that does not suck       |

## Fonts

| Package          | Description                             |
|:-----------------|:----------------------------------------|
| gnu-free-fonts   | A free family of scalable outline fonts |
| noto-fonts-emoji | Google Noto Color Emoji font            |

## Apps

| Package            | Description                                                          |
|:-------------------|:---------------------------------------------------------------------|
| firefox            | Fast, Private & Safe Web Browser                                     |
| ghostty            | Fast, native, feature-rich terminal emulator pushing modern features |
| gimp               | GNU Image Manipulation Program                                       |
| kdenlive           | A non-linear video editor for Linux using the MLT video framework    |
| keepassxc          | Cross-platform community-driven port of Keepass password manager     |
| libreoffice-fresh  | LibreOffice branch containing new features and enhancements          |
| mpv                | Free, open source, cross-platform media player                       |
| obs-studio         | Free, open source software for live streaming and recording          |
| zathura            | Minimalistic document viewer                                         |
| zathura-djvu       | DjVu support for Zathura                                             |
| zathura-pdf-mupdf  | Supports PDF, ePub, and OpenXPS for Zathura                          |
| virt-manager       | Desktop user interface for managing virtual machines                 |
