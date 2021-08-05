#!/bin/sh
while true; do
    read -p "Install Antigen?" yn
    case $yn in
        [Yy]* ) $Antigen; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;

    # Antigen
    mkdir ~/.zsh
    curl -L git.io/antigen > ~/.zsh/antigen.zsh

    # Vundle
    # https://github.com/VundleVim/Vundle.vim
    read -p "Install Vundle?" yn
    case $yn in
        [Yy]* ) $Vundle; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
        git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

    # Move Configs
    mv ~/.zshrc ~/.zshbak 
    mv ~/.vimrc ~/.vimbak
    mv .zshrc .vimrc ~/

    esac
done

zsh
