#!/bin/bash
cd ~/dotfiles-catppuccin
rm -rf ~/.config/i3 ~/.config/btop ~/.config/gtk-3.0 ~/.config/kitty ~/.config/nitrogen ~/.config/picom ~/.config/polybar ~/.config/rofi ~/.config/neofetch
mv config/* ~/.config/
mkdir -p ~/Pictures/wallpaper/
mv wallpaper/* ~/Pictures/wallpaper
mkdir -p ~/.local/bin
mv bin/* ~/.local/bin/

