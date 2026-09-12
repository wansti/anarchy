# Anarchy

Dotfiles from Omarchy Quattro for user installation on Arch Linux.

WORK IN PROGRESS.

Motivation:
* I like the Omarchy dotfiles as a solid basic Hyprland/Quickshell setup. I like the themes and plugins. I like the mixed focus on development and gaming. I like most of the default keybinds. Some of the included scripts are useful to me.
* I don't want another distro, especially one with severely limited options. I don't want any "opinions" in my root file system. I don't want random preinstalled commercial bloatware (if I did I'd use Windows). The practice of slapping some bash scripts and config files onto Arch Linux, calling it a "distro" and collecting a bunch of money seems shady at best.

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
* Fresh installation using archinstall
* btrfs file system, best effort partition layout
* Btrfs snapshot type: Snapper
* Swap on zram enabled, zstd compression
* Plymouth enabled
* User with sudo rights
* Profile: Desktop/Hyprland
* Greeter: sddm
* Audio: pipewire
* Firewall: ufw
* Network configuration: Copy ISO

Note that these are just the settings I tested with, which match the defaults used by Omarchy. The only one that should really matter is that the desktop environment is Hyprland (uwsm-managed). You should be able to configure all other settings to your liking, although some of the functions shipped with Omarchy might not work.

### Manual Setup
1) Install Arch Linux using archinstall. Use the above settings as a guideline, make sure to set the profile to Desktop/Hyprland.
2) After reboot, press Ctrl-Alt-F3 and log in with the user you created in the previous step.
3) Clone and install yay:
```
sudo pacman -Sy base-devel git
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
cd ..
```
4) Install the required packages:
```
sudo pacman -Sy --needed alacritty alsa-utils avahi bash-completion bat bluez bluez-tools bluez-utils bolt brightnessctl btop chromium clang cups cups-filters cups-pk-helper ddcutil dosfstools dotnet-runtime dua-cli evince exfatprogs expac eza fakeroot fastfetch fcitx5 fcitx5-gtk fcitx5-qt fd ffmpegthumbnailer fontconfig foot fzf git gnome-keyring gnome-themes-extra grim gpu-screen-recorder gum gvfs-mtp gvfs-nfs gvfs-smb hyprland hyprland-guiutils hyprpicker hyprsunset imagemagick imv inetutils inotify-tools inxi networkmanager jq kernel-modules-hook kitty lazygit less libsecret libvips libyaml llvm lua51 luarocks man-db mariadb-libs mpv mpv-mpris nautilus nautilus-python gnome-disk-utility noto-fonts noto-fonts-cjk noto-fonts-emoji nss-mdns nvim pacman-contrib pamixer pinta plocate plymouth postgresql-libs power-profiles-daemon python-gobject python-poetry-core qemu-user-static-binfmt qrencode qt6-imageformats qt6-multimedia qt6-multimedia-ffmpeg quickshell ripgrep ruby sddm slurp socat starship sushi system-config-printer tesseract tesseract-data-eng tldr tree-sitter-cli tmux ttf-jetbrains-mono-nerd udiskie ufw unzip usage uwsm vi whois wireless-regdb wireplumber wl-clipboard wtype woff2-font-awesome xdg-desktop-portal-gtk xdg-desktop-portal-hyprland xournalpp yt-dlp zbar zoxide
```
At this point, the only package that is required from AUR (besides `yay`) is `xdg-terminal-exec`.
```
yay -Sy xdg-terminal-exec
```


5) Clone this repository into .anarchy:
```
cd
git clone https://github.com/wansti/anarchy.git .anarchy
```

6) Copy the initial configuration files:
```
cd .anarchy
cp -r config/* ~/.config/
cp default/bashrc ~/.bashrc
mkdir -p ~/.config/systemd
cp -r default/systemd/user ~/.config/systemd/

mkdir -p ~/.local/share/applications
cp applications/foot.desktop ~/.local/share/applications/
cp applications/mpv.desktop ~/.local/share/applications/
cp default/xdg-terminal-exec/hyprland-xdg-terminals.list ~/.config/
```

7) Optional: Run the script that sets up the screen lock:
```
bin/omarchy-apply-lock
```
This will ask for root permissions in order to write the file `/etc/pam.d/omarchy-lock-password`.

8) Reboot. Once the system is back, log into your Hyprland session. You should be greeted with the familiar interface.
9) Disable the screensaver which relies on a nonexistent package. Either open a shell (`Super + Return`) and type `anarchy toggle screensaver`, or use the menu: `Super + Space`, then `Trigger -> Toggle -> Screensaver`.
10) Optional: In order to install gaming-related packages (e.g. Steam, Battle.net), edit `/etc/pacman.conf` (as root) and uncomment the `[multilib]` section.


### Automated Setup
coming soon

## Caveats
* Do not use `omarchy update`, simply update your packages with pacman (and yay) as usual. `git pull` this repository to get the latest updates into `.anarchy`.
* Many of the packages from the "Install" menu will fail to set up properly. You can find most of them in the AUR instead.
* No screensaver.
* [tbd]

## License

Anarchy/Omarchy is released under the [MIT License](https://opensource.org/licenses/MIT).
