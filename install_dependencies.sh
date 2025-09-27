#!/bin/bash
# Telescope
sudo apt install ripgrep make

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
exec zsh
nvm install node

# neovim
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim

#tmux
sudo apt install tmux

# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
