#!/usr/bin/env bash

# Install oh-my-zsh
echo 'Clean zsh config'
rm -rf ~/.oh-my-zsh ~/.zshrc

echo 'install oh-my-zsh'
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"


