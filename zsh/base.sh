#!/bin/sh

# Typical Install 
apt update
pwd && sleep 3
apt install \
	ranger \
	zsh \
	python3 \
	htop \
	fortunes-off \
	python3-pip \
	python3-setuptools \
	python3-wheel \
	git \
	wget \
	neofetch \
	neovim \
	rdfind \
	fzf \
	feh \
	caca-utils \
	ansible \
	python-is-python3

if [ -d "$HOME/.zsh" ] && echo '~/.zsh exists; exiting'
then exit
fi
cd ~/
cd scripts
cd zsh
sleep 5
./install.sh