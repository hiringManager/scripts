# File Handling

This should be run before migrating to a new install
####################################################

- Copy screenshot dir in Windows 
- Push git for scripts

Backup image
wsl.exe --export <dist> whatever.tar


# You should use rsync here wat even is this
cp .zshrc .zshrcBak
cp .vimrc .vimrcBak
cd ~/Documents/Scripts
rm .zshrc .vimrc
cp ~/.zshrc ~/.vimrc ./
git push 

