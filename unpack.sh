#!/bin/bash
PWD=$(eval pwd)
ln -s $PWD/nvim ~/.config/nvim
ln -s $PWD/alacritty ~/.config/alacritty
ln -s $PWD/yazi ~/.config/yazi
ln -s $PWD/.zshrc ~/.zshrc
ln -s $PWD/.tmux.conf ~/.tmux.conf
ln -s $PWD/.gitconfig ~/.gitconfig
ln -s $PWD/adams.zsh-theme ~/.oh-my-zsh/themes/adams.zsh-theme
sudo ln -s $PWD/tmux-sessionizer /usr/bin/tmux-sessionizer
sudo ln -s $PWD/git_add.sh /usr/bin/git_add.sh
