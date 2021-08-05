 # Creep Script

sudo apt install rdfind magicrescue foremost

mkdir ~/creep
cd ~/creep

# sudo fdisk and do /dev/sdx

foremost -i /dev/sdx -o ./ 

 # magicrescue -d ./ -r /usr/local/share/magicrescue/recipes/*
 
 # If you need to delete junk copies
 # while true; do rdfind --delete ~/creep/. ; sleep 30; done
 
 
