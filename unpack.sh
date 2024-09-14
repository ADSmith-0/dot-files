#!/bin/bash
PWD=$(eval pwd)
ln -s $PWD/nvim ~/.config/nvim
ln -s $PWD/tmux ~/.config/tmux
ln -s $PWD/alacritty ~/.config/alacritty
ln -s $PWD/.zshrc ~/.zshrc
ln -s $PWD/.gitconfig ~/.gitconfig
sudo ln -s $PWD/tmux-sessionizer /usr/bin/tmux-sessionizer
