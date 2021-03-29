/// Creep Script

mkdir ~/creep
cd ~/creep
sudo apt install rdfind magicrescue foremost

magicrescue -d ./ -r /usr/local/share/magicrescue/recipes/*

while true; do rdfind --delete ~/creep/. ; sleep 30;b
