#!/usr/bin/env bash

echo 'Clean Git config'
rm -rf ~/.gitconfig

echo 'Initial Git config'
ln -s ./dotfiles/.gitconfig ./

echo 'Clean Tmux config'
rm -rf ~/.tmux ~/.tmux.conf

echo 'Initial Tmux'
ln -s ./dotfiles/.tmux.conf ./
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
