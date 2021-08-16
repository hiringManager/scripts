#!/bin/bash

# Antigen
mkdir ~/.zsh
curl -L git.io/antigen > ~/.zsh/antigen.zsh
cp ./.zshrc ~/.zshrc
# Vundle
# https://github.com/VundleVim/Vundle.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp ./.vimrc ~/.vimrc