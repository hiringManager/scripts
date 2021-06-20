#!/bin/sh

chmod +x ./ohmy.sh
./ohmy.sh -y
exit
unzip ./plugins.zip
cd plugins && mv ./* ~/.oh-my-zsh/custom/plugins
rm ~/.zshrc
mv ../.zshrc ~/
echo 'done'
