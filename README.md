# Dot files for my terminal setup
- `install.sh` - Runs `install_dependencies.sh` and `unpack.sh`
- `install-dependencies.sh` - Install necessary dependencies to make everything work
- `unpack.sh` - Creates symlinks to necessary areas of the OS, so that everything can be controlled from this directory, but the configs are in the correct place for the tools

## Dependencies
Sometimes the `install_dependencies` won't work as expected, so here is a list of dependencies for each tool

### Zsh
- [zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
- [OhMyZsh](https://ohmyz.sh/)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) (oh my zsh plugin)

### Fzf
Fzf is usually out of date on most package managers so it's better to [install it from source](https://github.com/junegunn/fzf?tab=readme-ov-file#using-git)

### Alacritty
- [Install](https://github.com/alacritty/alacritty/blob/master/INSTALL.md#prerequisites)

### Nvim
- [nvim](https://github.com/neovim/neovim/blob/master/INSTALL.md) - remember to get the unstable release
- [fzf](https://github.com/junegunn/fzf) (telescope) - Install MANUALLY, most linux distros are very far behind on the version
- [fd](https://github.com/sharkdp/fd) (fzf & telescope)
- [ripgrep](https://github.com/BurntSushi/ripgrep) (telescope)
- [yazi](https://yazi-rs.github.io/docs/installation#source) - For file exploring in Nvim
- make (for telescope)
- npm, nodejs (required for downloading certain language servers)
- nvm (helps keep npm up-to-date)

### Tmux
- [tmux](https://github.com/tmux/tmux/wiki/Installing)
- [tpm](https://github.com/tmux-plugins/tpm)

## Other stuff to remember
- [Setup git ssh key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
  - Note: That the git remote origin has to be `ssh` for this to work, if you use http(s) it will not use SSH
- Remember to change the email in the `.gitconfig`
- Open tmux and run: `prefix + I` to install dependencies
