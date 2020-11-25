#!/usr/bin/python3 


###Quick Aliases in Zsh/Bash
###It ain't pretty, but it works


import os 

#Edit to your dir and point it to your .bashrc / bashrc custon / zsh / etc.
os.chdir("/home/daria/")
f = open('.zshrc', 'a')

print("Shortened name/alias _____=")
A_Name = input(" ")


#### Line removal with input
#if input(prompt="-r"):
 #   count = len(open(f).readlines())
  #  f.strip
#count.strip max(count)
####

print("And the definition? alias NotThis=________")
A_Function = input()

#output name of function
f.write("\n",)
f.write("alias ")
f.write(A_Name,)
f.write ("=")
f.write("\"")
f.write(A_Function)
f.write("\"")

#Do I have to fucking append all this shit to print it?

print("done!")
