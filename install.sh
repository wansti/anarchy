cd
sudo pacman -Sy base-devel git
git clone git@github.com:wansti/anarchy.git .anarchy
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
cd ..

sudo pacman -Sy --needed alacritty alsa-utils avahi bash-completion bat bluez bluez-tools bluez-utils bolt brightnessctl btop chromium clang cups cups-filters cups-pk-helper ddcutil dosfstools dotnet-runtime dua-cli evince exfatprogs expac eza fakeroot fastfetch fcitx5 fcitx5-gtk fcitx5-qt fd ffmpegthumbnailer fontconfig foot fzf git gnome-keyring gnome-themes-extra grim gpu-screen-recorder gum gvfs-mtp gvfs-nfs gvfs-smb hyprland hyprland-guiutils hyprpicker hyprsunset imagemagick imv inetutils inotify-tools inxi networkmanager jq kernel-modules-hook kitty lazygit less libsecret libvips libyaml llvm lua51 luarocks man-db mariadb-libs mpv mpv-mpris nautilus nautilus-python gnome-disk-utility noto-fonts noto-fonts-cjk noto-fonts-emoji nss-mdns nvim pacman-contrib pamixer pinta plocate plymouth postgresql-libs power-profiles-daemon python-gobject python-poetry-core qemu-user-static-binfmt qrencode qt6-imageformats qt6-multimedia qt6-multimedia-ffmpeg quickshell ripgrep ruby sddm slurp socat starship sushi system-config-printer tesseract tesseract-data-eng tldr tree-sitter-cli tmux ttf-jetbrains-mono-nerd udiskie ufw unzip usage uwsm vi whois wireless-regdb wireplumber wl-clipboard wtype woff2-font-awesome xdg-desktop-portal-gtk xdg-desktop-portal-hyprland xournalpp yt-dlp zbar zoxide

#yay -Sy localsend xdg-terminal-exec tzupdate yaru-icon-theme
yay -Sy xdg-terminal-exec

cd .anarchy
cp -r config/* ~/.config/
cp default/bashrc ~/.bashrc
mkdir -p ~/.config/systemd
cp -r default/systemd/user ~/.config/systemd/

mkdir -p ~/.local/share/applications
cp applications/foot.desktop ~/.local/share/applications/
cp applications/mpv.desktop ~/.local/share/applications/
cp default/xdg-terminal-exec/hyprland-xdg-terminals.list ~/.config/

# setup screen lock (writes to /etc/pam.d)
bin/omarchy-apply-lock

#Reboot

# Turn off screensaver (relies on a custom package)
~/.anarchy/bin/omarchy toggle screensaver

# For Steam/Gaming:
# edit /etc/pacman.conf and uncomment the [multilib] section
