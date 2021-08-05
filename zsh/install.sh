#!/bin/sh
# Antigen
mkdir ~/.zsh ;
curl -L git.io/antigen > ~/.zsh/antigen.zsh ;
sleep 2
# Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

rm ~/.zshrc ~/.vimrc
mv .zshrc .vimrc ~/

