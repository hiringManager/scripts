#!/bin/bash

#For setting Register values automatically
#X=foo
#Y=X
#eval "Z=\$$Y"

while true; do

    #Dependencies. 
    sudo apt install i8kutils fancontrol lm-sensors msr-tools

    #changing msr registers and subtracting 1 to disable bit
    sudo modprobe msr && sudo rdmsr -a -d 0x1FC && sudo wrmsr 0x1FC 2359388

    #cloning repo for fan control that's rekt by bios

    if [ -d "/tmp/dell-bios-fan-control" ] 
    then
        cd /tmp/dell-bios-fan-control && ./dell-bios-fan-control 0./dell-bios-fan-control 0
    else
        cd /tmp && git clone https://github.com/TomFreudenberg/dell-bios-fan-control && cd dell-bios-fan-control && make && make install && ./dell-bios-fan-control 0
    fi

    #Setting Fans
    sudo i8kctl fan 1 1 && sudo pwmconfig

    #Disabling Automatic Bios Fan Control (AKA No Fan Control)

    #check temps
    watch sensors

sleep 60; 


#Prompts 

#while true; do
 #   read -p "Do you want to run the fan config? (takes a sec)?" yn
  #  case $yn in
   #     [Yy]* ) sudo i8kctl fan 1 1 && sudo pwmconfig

#echo "k done. What a pain in the ass. Thanks, Dell. Make sure you check to see if CPU fan is spinning" && sleep 7; break;;
 #       [Nn]* ) exit;;
  #      * ) echo "Please answer yes or no.";;
   # esac
#done

#
#while true; do
   # read -p "Did you manually check your register? (modprobe msr> sudo rdmsr -a -d 0x1FC) make SURE it is 2359389" yn
    #case $yn in
     #   [Yy]* ) sudo modprobe msr && sudo rdmsr -a -d 0x1FC && sudo wrmsr 0x1FC 2359388 ; break;;
      #  [Nn]* ) exit;;
       # * ) echo "Please answer yes or no.";;
    #esac
#done