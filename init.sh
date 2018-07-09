#!/usr/bin/env bash

# Set default my Git config
echo 'Clean Git config'
rm -rf ~/.gitconfig

echo 'Initial Git config'
ln -s dotfiles/.gitconfig ./


# Set Tmux config
echo 'Clean Tmux config'
rm -rf ~/.tmux ~/.tmux.conf

echo 'Initial Tmux'
ln -s dotfiles/.tmux.conf ./
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm


# Set Zsh config
echo 'Initial zsh'
rm .zshrc_
mv .zshrc .zshrc_
ln -s dotfiles/.zshrc ./


# Set Neovim config
echo 'Clean Neovim config'
rm -rf ~/.config/nvim

echo 'Initial Neovim'
ln -s ../dotfiles/.config/nvim .config/
