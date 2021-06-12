#!/bin/sh

echo "Trying to remove i3"

sudo apt remove --purge i3*

echo "Installing i3-gaps"

echo "Dependencies"
sudo apt install meson sl libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev \
libxcb-util0-dev libxcb-icccm4-dev libyajl-dev \
libstartup-notification0-dev libxcb-randr0-dev \
libev-dev libxcb-cursor-dev libxcb-xinerama0-dev \
libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev \
autoconf libxcb-xrm0 libxcb-xrm-dev libxcb-shape0-dev

echo "Cloning repo"
cd /tmp
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps

echo "Compile and install"
meson build
mkdir -p build && cd build/
meson build
ninja install
# Disabling sanitizers is important for release versions!
# The prefix and sysconfdir are, obviously, dependent on the distribution.
sl

echo "Reboot for good measure"
echo "also see script if you encounter problems"

 # If you manually start your xsession IE no manager
 # echo 'exec /usr/local/bin/i3' >| ~/.xinitrc
 # ln -s ~/.xinitrc ~/.xsession
 # chmod +x ~/.xinitrc
 
 # Remember to add gaps to your config -- 
 #    gaps inner 10
 #    gaps outer 10
 #    for_window [class="^.*"] # hides borders / titlebars 
 
 # Install i3status if you use it
 #    sudo apt install i3status 
 
