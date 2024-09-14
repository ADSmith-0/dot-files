#!/bin/bash
# Telescope
sudo apt install fzf ripgrep make

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
exec zsh

# neovim
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim

# tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
