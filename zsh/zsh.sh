sudo apt install git unzip curl zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cd ~/scripts/zsh/
unzip plugins.zip
mv /plugins/* ~/.oh-my-zsh/custom/plugins/
rm ~/.zshrc
mv ./.zshrc ~/




