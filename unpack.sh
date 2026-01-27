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
sudo ln -s $PWD/git-add.sh /usr/bin/git-add.sh
sudo ln -s $PWD/git-sync.sh /usr/bin/git-sync.sh
sudo ln -s $PWD/git-switch.sh /usr/bin/git-switch.sh
sudo ln -s $PWD/git-open-remote.sh /usr/bin/git-open-remote.sh
sudo ln -s $PWD/git-open-pr.sh /usr/bin/git-open-pr.sh
