# Dot files for my terminal setup
- `install.sh` - Runs `install_dependencies.sh` and `unpack.sh`
- `install_dependencies.sh` - Install necessary dependencies to make everything work
- `unpack.sh` - Creates symlinks to necessary areas of the OS, so that everything can be controlled from this directory, but the configs are in the correct place for the tools

## Dependencies
Sometimes the `install_dependencies` won't work as expected, so here is a list of dependencies for each tool

### Zsh
- [zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
- [OhMyZsh](https://ohmyz.sh/)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) (oh my zsh plugin)

### Nvim
- [nvim](https://github.com/neovim/neovim/blob/master/INSTALL.md) - remember to get the unstable release
- [fzf](https://github.com/junegunn/fzf) (telescope)
- [fd](https://github.com/sharkdp/fd) (telescope)
- [ripgrep](https://github.com/BurntSushi/ripgrep) (telescope)
- make (for telescope)
- npm, nodejs (required for downloading certain language servers)
- nvm (helps keep npm up-to-date)

### Tmux
- [tmux](https://github.com/tmux/tmux/wiki/Installing)
- [tpm](https://github.com/tmux-plugins/tpm)

## Other stuff to remember
- [Setup git ssh key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
- Remember to change the email in the `.gitconfig`
