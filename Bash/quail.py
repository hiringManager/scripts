#!/usr/bin/python3 


###Quick Aliases in Zsh/Bash
###It ain't pretty, but it works


import os 
#Directory. How do I say "any user"
os.chdir("/home/daria/Documents/")
f = open('./.zshrc', 'a')

print("Shortened name/alias _____=")
A_Name = input(" ")

#if input(prompt="-r"):
 #   count = len(open(f).readlines())
  #  f.strip
#count.strip max(count)

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
