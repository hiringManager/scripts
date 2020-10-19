#!/bin/bash
#Testing --- bash -n install.sh

# Main Dots - https://github.com/owl4ce/dotfiles.git
#Goddammit so in the future if you're running into issues with MX/antiX and repos/ debian packages failing. You simply need to install software-properties-common checkaptgpg 

#This script sucks and keeps breaking. Use on a new install, don't 1v1 your old install with a random shell script
#Deps for pretty much everything
sudo apt update && sudo apt install meson gcc software-properties-common checkaptgpg openbox obconf alsa-utils brightnessctl nitrogen dunst tint2 gsimplecal rofi lxappearance qt5ct qt5-style-plugins lxpolkit xautolock rxvt-unicode xclip scrot thunar thunar-archive-plugin thunar-media-tags-plugin thunar-volman ffmpegthumbnailer tumbler w3m w3m-img geany nano vim viewnior mpd mpc ncmpcpp mpv pavucontrol parcellite neofetch htop zsh imagemagick ffmpeg playerctl libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libxcb-glx0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev  libpcre2-dev  libevdev-dev uthash-dev libev-dev libx11-xcb-dev libpcre3-dev slim xorg obmenu 
echo 'you should do a snapshot now because here come the GITS BABY'
sleep 10
sudo apt update

#You may have issues here. Try running checkaptgpg/ sudo mx-repo-manager 
echo 'deb http://download.opensuse.org/repositories/home:/Head_on_a_Stick:/obmenu-generator/Debian_10/ /' | sudo tee /etc/apt/sources.list.d/home:Head_on_a_Stick:obmenu-generator.list
curl -fsSL https://download.opensuse.org/repositories/home:Head_on_a_Stick:obmenu-generator/Debian_10/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home:Head_on_a_Stick:obmenu-generator.gpg > /dev/null

sudo checkaptgpg
sudo apt update && sudo apt install obmenu-generator

#Picom 

sudo apt install compton

#sudo apt install libgtk2-perl libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libxcb-glx0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev  libpcre2-dev  libevdev-dev uthash-dev libev-dev libx11-xcb-dev
#cd /tmp 
#git clone https://github.com/yshui/picom.git 
#cd picom
#git submodule update --init --recursive
#meson --buildtype=release . build
#ninja -C build
#sudo ninja -C build install

#rm -r /tmp/picom

cd ~/ 
git clone https://github.com/owl4ce/dotfiles.git
cd dotfiles/ && sudo cp -r {.*,*} ~/
cd ~/
sudo rm -r ~/{README.md,LICENSE,.git} # Delete unnecessary files

cd ~/.icons/
sudo tar -Jxvf Papirus-Custom.tar.xz && tar -Jxvf Papirus-Dark-Custom.tar.xz
sudo cp -r {Papirus-Custom,Papirus-Dark-Custom} /usr/share/icons/
sudo rm -r ~/.icons/{Papirus-Custom,Papirus-Dark-Custom,*.tar.xz} # Delete unnecessary files
fc-cache -rv

echo 'zsh install coming, if you're kinky like that. Did you know that you can kill PIDs with tab completion in zsh? Like say you wanted to kill compton, you can type kill c(hit tab) and the PIDs starting with c will autocomplete. Is there an alternative in bash? idk, install is starting now. Anyway, do you want to install it?'

while true; do
    read -p "zsh install coming, if you're kinky like that. Did you know that you can kill PIDs with tab completion in zsh? Like say you wanted to kill compton, you can type kill c(hit tab) and the PIDs starting with c will autocomplete. Is there an alternative in bash? idk, install is starting now. Anyway, do you want to install it+ ohmyzsh?" yn
    case $yn in
        [Yy]* ) 
      chsh -s /usr/bin/zsh # Change default shell to zsh for current user
      sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
      git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
      git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions; break;;
        [Nn]* ) echo "Okay. so it is all completed. Is Obmenu-generator bugging out when you right click on desktop? make sure you 'sudo chown USERNAME -R ~/.config" ;;
        * ) echo "Please answer yes or no.";;
    esac
done


EOF
