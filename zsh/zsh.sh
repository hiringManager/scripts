#!/bin/sh
sudo apt install git unzip curl zsh
nohup | ./ohmyzsh
sleep 10
unzip plugins.zip
mv ./plugins/* ~/.oh-my-zsh/custom/plugins/
rm ~/.zshrc
mv ./.zshrc ~/
