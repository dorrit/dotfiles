#!/bin/bash

set -e

echo ">>> Installing important packages..."
sudo pacman -S --noconfirm \
	git \
	curl \
	zsh \
	firefox \
	tmux \
	btop \
	zoxide \
	eza \
	thefuck \
	atuin \
	fastfetch \
	unzip \
	neovim \
	base-devel \
	xdg-utils \
	stow \
	grim \
	wl-clipboard \
	slurp \
	jq

echo ">>> Installing Rust and Spotify Player..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cargo install spotify_player --features image

echo ">>> Installing AUR helper (yay)..."
if ! command -v yay &>/dev/null; then
	git clone https://aur.archlinux.org/yay.git ~/yay && cd ~/yay
	makepkg -si --noconfirm
	cd ~
	rm -rf ~/yay
fi

echo ">>> Installing base Hyprland packages..."
yay -S --noconfirm \
	qt5-wayland \
	qt6-wayland \
	hyprlock \
	hypridle \
	hyprpaper \
	hyprpolkitagent \
	hyprpicker \
	hyprshot \
	waybar \
	rofi \
	rofimoji \
	cliphist \
	brightnessctl \
	playerctl \
	xdg-desktop-portal-hyprland \
	xdg-desktop-portal \
	noto-fonts \
	noto-fonts-emoji \
	ttf-font-awesome \
	ttf-droid \
	dunst \
	nordic-theme \
	thunar \
	tailscale \
	syncthing \
	syncthingtray \
	efm-langserver

echo ">>> Done. Now load the config and reboot!"
