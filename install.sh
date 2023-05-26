#!/bin/bash
set -eux

# Use zsh
sudo chsh -s $(which zsh) $USER

# install neovim
nix-env -iA nixpkgs.neovim
git clone git@github.com:TheButlah/kickstart.nvim ~/.config/nvim

# Install zellij
nix-env -iA nixpkgs.zellij

# Install ripgrep
nix-env -iA nixpkgs.ripgrep

# Use vi motions in terminal
set -o vi

# Make Starship the prompt
nix-env -iA nixpkgs.starship
echo 'eval "$(starship init zsh)"' >>${HOME}/.zshrc
echo 'eval "$(starship init bash)"' >>${HOME}/.bashrc
cp "$(dirname "$0")/starship.toml" ~/.config/starship.toml

