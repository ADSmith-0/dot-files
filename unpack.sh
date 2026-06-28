#!/bin/bash
PWD=$(eval pwd)
ln -s $PWD/nvim ~/.config/nvim
ln -s $PWD/alacritty ~/.config/alacritty
ln -s $PWD/yazi ~/.config/yazi
ln -s $PWD/.zshrc ~/.zshrc
ln -s $PWD/.tmux.conf ~/.tmux.conf
ln -s $PWD/.gitconfig ~/.gitconfig
ln -s $PWD/adams.zsh-theme ~/.oh-my-zsh/themes/adams.zsh-theme

mkdir ~/.local/bin
ln -s $PWD/tmux-sessionizer ~/.local/bin/tmux-sessionizer
ln -s $PWD/git-add.sh ~/.local/bin/git-add.sh
ln -s $PWD/git-sync.sh ~/.local/bin/git-sync.sh
ln -s $PWD/git-switch.sh ~/.local/bin/git-switch.sh
ln -s $PWD/git-open-remote.sh ~/.local/bin/git-open-remote.sh
ln -s $PWD/git-open-pr.sh ~/.local/bin/git-open-pr.sh
