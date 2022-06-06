#!/bin/bash
git clone https://aur.archlinux.org/paru.git /tmp/paru
cd /tmp/paru && makepkg -si
cd ~/dotfiles-catppuccin
rm -rf ~/.config/i3 ~/.config/btop ~/.config/gtk-3.0 ~/.config/kitty ~/.config/nitrogen ~/.config/picom ~/.config/polybar ~/.config/rofi ~/.config/neofetch
mkdir -p ~/Pictures/wallpaper/
mkdir -p ~/.local/bin
paru -S --needed --noconfirm catppuccin-gtk-theme polybar nerd-fonts-sf-mono i3-gaps autotiling matcha-gtk-theme papirus-icon-theme picom nitrogen lxsession pipewire-pulse alsa-utils pipewire base-devel rofi lxappearance noto-fonts ttf-nerd-fonts-symbols ttf-font-awesome ttf-hanazono ttf-iosevka-nerd ttf-jetbrains-mono ttf-joypixels ttf-roboto ttf-roboto-mono ttf-sarasa-gothic ttf-sazanami gnu-free-fonts ttf-baekmuk ttf-cascadia-code ttf-ubuntu-font-family gsfonts ttf-bitstream-vera ttf-dejavu ttf-liberation nerd-fonts-fira-code ttf-fira-code ttf-fira-mono betterlockscreen nextcloud-client discord-canary firefox pipewire pipewire-pulse pipewire-jack lib32-pipewire lib32-pipewire-jack pipewire-alsa pavucontrol keepassxc alsa-utils usbutils p7zip btop kitty wireplumber pcmanfm xarchiver xterm sddm xorg xorg-xinit flameshot openssh python-pip w3m neofetch xsel xclip
pip install psutil

sleep 5

mv ~/dotfiles-catppuccin/bin/* ~/.local/bin/
mv ~/dotfiles-catppuccin/wallpaper/* ~/Pictures/wallpaper
mv ~/dotfiles-catppuccin/config/* ~/.config/

betterlockscreen -u ~/Pictures/wallpaper/evening-sky.png
