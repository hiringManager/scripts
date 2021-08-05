#!/bin/bash

###Convert antiX-base into a minimal fluxbox environment, centered around eDEX-UI
###This script is UNTESTED 

#Goodies/terminal stuff
#sudo apt install vifm emacs ranger 

#This adds the loop to fluxbox/startup Remember to remove the exec fluxbox line in ./startup
echo "fluxbox &
fbpid=$!

sleep 1
{
   # Applications you want to run after fluxbox has started
   # MAKE SURE THAT APPS THAT KEEP RUNNING HAVE AN & AT THE END.
   # ipager &
   # gkrellm2 &
   ~/.local/share/applications/LoopEdex.sh &

} &
 
wait $fbpid" >> ~/.fluxbox/startup

#Creating our shell script loop

touch ~/.local/share/applications/LoopEdex.sh 

echo "while true
do
~/.local/share/applications/eDEX-UI*
sleep 1 
done " >> ~/.local/share/applications/LoopEdex.sh

chmod +x ~/.local/share/applications/LoopEdex.sh

#Set alias for doom in eDEX-UI
echo " alias doom="emacs --no-window-system" >> ~/.bashrc"

#Set local Path for eDEX and the .sh
echo "PATH=$PATH:~/.local/share/applications/LoopEdex" >> ~/.bashrc 
