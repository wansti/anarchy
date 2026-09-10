# Anarchy

Dotfiles from Omarchy Quattro for user installation on Arch Linux.

Work in progress.

Motivation:
* I like the Omarchy dotfiles as a solid basic Hyprland/Quickshell setup. I like the themes and plugins. I like the mixed focus on development and gaming. I like most of the default keybinds. Some of the included scripts are useful to me.
* I don't want another distro, especially one with severely limited options. I don't want any "opinions" in my root file system. I don't want random preinstalled commercial bloatware - if that's what I wanted I'd use Windows. The practice of slapping a bunch of bash scripts and config files onto Arch Linux, calling it a "distro" and collecting a bunch of money seems shady at best.

Goals:
* Use basic dotfiles from Omarchy
* Make Omarchy themes and plugins usable
* User installation only, minimize changes to the operating system
* Do not install any of the bloat by default
* Minimize reliance on AUR packages, remove custom repositories completely
* Make dotfiles usable on other Arch based distros like CachyOS

Changes:
* Services and AI menus removed (applications can still be installed from the AUR)

## Setup

### Prerequisites
For now, the following Arch Linux installation is assumed:
* btrfs file system, best effort partition layout
* Btrfs snapshot type: Snapper
* Swap on zram enabled, zstd compression
* Bootloader: Limine, Plymouth enabled
* User with sudo rights
* Profile: Desktop/Hyprland
* Greeter: sddm
* Audio: pipewire
* Firewall: ufw
* Network configuration: Copy ISO

The only one that should matter is that the desktop environment is Hyprland. Some of the original functions will not work with a different setup.

## License

Anarchy/Omarchy is released under the [MIT License](https://opensource.org/licenses/MIT).
