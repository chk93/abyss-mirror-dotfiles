#!/usr/bin/env bash

set -euo pipefail

DOTFILES="$HOME/abyss-mirror-dotfiles"
BACKUP="$HOME/dotfiles_backup_$(date +%Y-%m-%d_%H-%M-%S)"
CONFIG="$HOME/.config"

echo "Creating backup: $BACKUP"

mkdir -p "$BACKUP"
mkdir -p "$CONFIG"

if [[ -d "$CONFIG" ]]; then
    cp -a "$CONFIG" "$BACKUP/"
fi

if [[ -d "$HOME/Wallpapers" ]]; then
    cp -a "$HOME/Wallpapers" "$BACKUP/"
fi

if [[ -f "$HOME/.bashrc" ]]; then
    cp -a "$HOME/.bashrc" "$BACKUP/"
fi

if [[ ! -d "$DOTFILES" ]]; then
    echo "Error: directory $DOTFILES was not found."
    exit 1
fi

for directory in sway ghostty waybar wofi; do
    if [[ -d "$DOTFILES/$directory" ]]; then
        cp -a "$DOTFILES/$directory" "$CONFIG/"
    else
        echo "Warning: $DOTFILES/$directory was not found."
    fi
done

if [[ -f "$DOTFILES/.bashrc" ]]; then
    cp -a "$DOTFILES/.bashrc" "$HOME/"
else
    echo "Warning: .bashrc was not found."
fi

if [[ -d "$DOTFILES/Wallpapers" ]]; then
    cp -a "$DOTFILES/Wallpapers" "$HOME/"
else
    echo "Warning: Wallpapers directory was not found."
fi

echo "Backup completed successfully."
echo "Backup location: $BACKUP"

read -rp "Reboot the computer now? [y/N] " answer

if [[ "$answer" =~ ^[Yy]$ ]]; then
    sudo reboot
fi

