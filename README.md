# Minimalistic rice for sway

<img width="1920" height="1079" alt="2026-09-09-140621_grim" src="https://github.com/user-attachments/assets/49f1df22-85de-49f5-a083-f77ead3d0f50" />


I created it without using AI. 

I created it using void linux(also tested on Arch), but on other distributions, everything should work too. 

Instructions for changing the wallpaper are located directly in the sway config

## Screenshots

### 0-wallpapers.jpg

<img width="1920" height="1080" alt="2026-09-09-140710_grim" src="https://github.com/user-attachments/assets/987b4ec8-33fc-4155-aba0-47a11f588b7b" />

### 3-wallpapers.jpg

<img width="1920" height="1080" alt="2026-09-09-140859_grim" src="https://github.com/user-attachments/assets/c4631e91-1bdc-4e24-aee9-6f6fcbee832c" />


### Requirements

- sway
- waybar
- wofi
- ghostty
- bash

### Optional requirement

- grim
- slurp
- wl-clipboard

### Keybinds

win + t = Terminal

win + q = Kill

win + d = menu(wofi)

win + c  = Browser(firefox)

win + Shift + s = Screenshot to clipboard

win + Ctrl + s = Screenshot to ~/Screenshots

other binds are default

### Installation

```
cd

git clone https://github.com/chk93/abyss-mirror-dotfiles

mkdir dotfiles_backup

mkdir Wallpapers`

cp -r ~/.config/ ~/dotfiles_backup

cp -r ~/Wallpapers/ ~/dotfiles_backup

cp -r ~/.bashrc ~/dotfiles_backup`

cp -rf ~/abyss-mirror-dotfiles/sway ~/.config

cp -rf ~/abyss-mirror-dotfiles/ghostty ~/.config

cp -rf ~/abyss-mirror-dotfiles/waybar ~/.config

cp -rf ~/abyss-mirror-dotfiles/wofi ~/.config

cp -rf ~/abyss-mirror-dotfiles/.bashrc ~/

cp -rf ~/abyss-mirror-dotfiles/Wallpapers ~/```

sudo reboot
```

### Or use script 

But I'm not sure if it works. Use at your own risk

```
cd`

git clone https://github.com/chk93/abyss-mirror-dotfiles

cd abyss-mirror-dotfile

chmod -x install.sh

./install.sh
```
