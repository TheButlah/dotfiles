#!/bin/bash
set -eux

# Use zsh
chsh -s $(which zsh)

# install neovim
nix-env -iA nixpkgs.neovim
git clone git@github.com:TheButlah/kickstart.nvim ~/.config/nvim

# Install zellij
nix-env -iA nixpkgs.zellij

# Make Starship the prompt
nix-env -iA nixpkgs.starship
echo 'eval "$(starship init zsh)"' >>${HOME}/.zshrc
cp starship.toml ~/.config/starship.toml

