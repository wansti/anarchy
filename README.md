# Anarchy

Dotfiles from Omarchy Quattro for user installation on Arch Linux.

Work in progress.

Goals:
* Use basic dotfiles from Omarchy
* Do not install any of the bloat by default
* Make Omarchy themes and plugins usable
* User installation only, minimize changes to the operating system
* Minimize reliance on AUR packages, remove custom repositories completely

## Setup

### Prerequisites
The following Arch Linux installation is assumed:
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
