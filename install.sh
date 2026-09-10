sudo pacman -Sy base-devel git
git clone git@github.com:wansti/anarchy.git
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
