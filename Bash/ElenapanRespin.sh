#!/bin/bash

#This is a script to easily install a nice config for Awesome WM, that is feature-rich and pretty UwU

#Install MX or Debian something

#Download + Configure pywal and append zshrc+bashrc

sudo apt install python3 python3-pip python3-setuptools python3-wheel
pip3 install pywal

#append RC with export pathasdffasfdasdf ~/.local/bin ~/.color-toys ~/.scripts

git clone https://github.com/elenapan/dotfiles

#Pull Colortoys and combine with elenascripts? Maybe too much bloat. Is there a way to make it be called with color(toolname)?
git clone https://github.com/owl4ce/dotfiles/tree/master/.color-toys
mv ./.color-toys ~/.colortoys

#Is doom going to persist?
#Is Zsh going to persist? If not, where in the snapshot dir removal is it getting fucked up?






