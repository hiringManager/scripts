#!/bin/bash

# Antigen
mkdir ~/.zsh
curl -L git.io/antigen > ~/.zsh/antigen.zsh
## Shouldn't there be a git for this? and why does curl no mkdir

# Vundle
# https://github.com/VundleVim/Vundle.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# Move Configs
mv ~/.zshrc ~/.zshbak 
mv ~/.vimrc ~/.vimbak
mv .zshrc .vimrc ~/
zsh
