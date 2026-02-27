#!/bin/bash

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to check command success
check_success() {
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}✓ $1 successful${NC}"
    else
        echo -e "${RED}✗ $1 failed${NC}"
        exit 1
    fi
}

# Check if running on Arch Linux
if [ ! -f /etc/arch-release ]; then
    echo -e "${RED}Error: This script is for Arch Linux only${NC}"
    exit 1
fi

# Check for internet connection
if ! ping -c 1 archlinux.org &> /dev/null; then
    echo -e "${YELLOW}Warning: No internet connection detected${NC}"
    read -p "Continue anyway? (y/N): " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        exit 1
    fi
fi

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
	jq \
	rust
check_success "Pacman packages installation"

echo ">>> Installing AUR helper (yay)..."
if ! command -v yay &>/dev/null; then
	git clone https://aur.archlinux.org/yay.git ~/yay && cd ~/yay
	makepkg -si --noconfirm
	cd ~
	rm -rf ~/yay
	check_success "Yay installation"
else
	echo -e "${GREEN}✓ Yay already installed${NC}"
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
check_success "Hyprland packages installation"

echo ">>> Installing optional/additional packages..."
yay -S --noconfirm \
	pavucontrol \
	google-chrome \
	beeper-v4-bin \
	spotify-player \
	kdeconnect
check_success "Optional packages installation"

echo ">>> Installing Oh-My-Zsh..."
if [ ! -d "$HOME/.oh-my-zsh" ]; then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
	check_success "Oh-My-Zsh installation"
else
	echo -e "${GREEN}✓ Oh-My-Zsh already installed${NC}"
fi

echo ">>> Installing GeistMono Nerd Font..."
if [ ! -d "$HOME/.local/share/fonts/GeistMono" ]; then
	mkdir -p ~/.local/share/fonts
	cd /tmp
	curl -LO https://github.com/ryanoasis/nerd-fonts/releases/latest/download/GeistMono.zip
	unzip -q GeistMono.zip -d ~/.local/share/fonts/GeistMono/
	fc-cache -fv
	cd ~
	check_success "GeistMono Nerd Font installation"
else
	echo -e "${GREEN}✓ GeistMono Nerd Font already installed${NC}"
fi

echo ">>> Done. Now load the config and reboot!"
