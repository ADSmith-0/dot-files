#!/bin/bash
PWD=$(eval pwd)
ln -s $PWD/nvim ~/.config/nvim
ln -s $PWD/tmux ~/.config/tmux
ln -s $PWD/alacritty ~/.config/alacritty
ln -s $PWD/.zshrc ~/.zshrc
ln -s $PWD/.gitconfig ~/.gitconfig
ln -s $PWD/adams.zsh-theme ~/.oh-my-zsh/themes/adams.zsh-theme
sudo ln -s $PWD/tmux-sessionizer /usr/bin/tmux-sessionizer
