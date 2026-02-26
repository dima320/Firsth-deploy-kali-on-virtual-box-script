#!/bin/bash

echo "Updating sources.list..."
echo "deb http://http.kali.org/kali kali-rolling main contrib non-free non-free-firmware" | sudo tee /etc/apt/sources.list > /dev/null

echo "Updating system..."
sudo apt update
sudo apt full-upgrade -y

echo "Installing packages..."
sudo apt install -y build-essential dkms linux-headers-$(uname -r) \
virtualbox-guest-x11 virtualbox-guest-utils virtualbox-guest-dkms \
kali-linux-default kali-tools-top10 git curl wget net-tools htop neovim

echo "Done! Rebooting..."
sudo reboot
