# Modify this so that it is reusable
source /home/daria/.zsh/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh
# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle command-not-found
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle MichaelAquilina/zsh-you-should-use
antigen bundle jeffreytse/zsh-vi-mode
antigen bundle chrissicool/zsh-256color 
# Syntax highlighting bundle.
# antigen bundle zsh-users/zsh-syntax-highlighting
# Replaced with next plugin
antigen bundle zdharma/fast-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle redxtech/zsh-not-vim

# Load the theme.
antigen theme kennethreitz 
# This one uses italics
# kennethreitz### 
# Others: 
# xiong-chiamiov-pluss, rixius crunch arrow 

# Tell Antigen that you're done.
antigen apply

# Hardcore mode for you-should-use
export YSU_HARDCORE=0

# Exchange text in buffer easily
# Could be useful but don't feel like messing with rn
# https://github.com/okapia/zsh-viexchange

# FIX: Was this added in for npm, or is it the usual? Your git zsh is polluted, so no answer there.
#source ~/.profile


# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="mm/dd/yyyy"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

#ELENA

# Cursor
#echo -e -n "\x1b[\x30 q" # changes to blinking block
#echo -e -n "\x1b[\x31 q" # changes to blinking block also
echo -e -n "\x1b[\x32 q" # changes to steady block
#echo -e -n "\x1b[\x33 q" # changes to blinking underline   
#echo -e -n "\x1b[\x34 q" # changes to steady underline
#echo -e -n "\x1b[\x35 q" # changes to blinking bar
#echo -e -n "\x1b[\x36 q" # changes to steady bar

export HISTSIZE=500000
export SAVEHIST=500000
export MANPATH="/usr/local/man:$MANPATH"

#This causes pasted URLs to be automatically escaped, without needing to disable globbing.
autoload -Uz bracketed-paste-magic
zle -N bracketed-paste bracketed-paste-magic
autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic

# Additions

# Import colorscheme from wal
# (~/.local/bin/wal -qR &)
#eval $(thefuck --alias) 

# Find new executables in path
zstyle ':completion:*' rehash true

# FIX - alias this find /thisdir -type f -name '*.ogg' -exec mv -i {} /somedir  \;

###PATHS
# Python, etc.
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.scripts:$PATH"
# Flatpak
# export PATH="$HOME/.local/share/flatpak/exports/bin:$PATH"

#ALIASES
alias brc="vim ~/.bashrc"
alias zrc="vim ~/.zshrc"
alias frc="vim ~/.fishrc"
alias vrc='vim ~/.vimrc'
alias p2="~/.color-toys/pipes2"
# FIX Grab your bunnyfetch from laptop nvme install
alias nf="neofetch"
alias sai="sudo apt install "
alias sau="sudo apt update && sudo apt upgrade -y"
alias saaa="sudo apt autoremove && sudo apt clean && sudo apt autoclean && sudo apt update && sudo apt upgrade"
alias qa="python3 ~/.local/bin/quail"
alias ic="vim ~/.config/i3/config"
alias ttt="cd ~/Applications/Bin/ && ./terraform"
alias orc="emacs ~/.config/openbox/rc.xml"
alias arc="emacs ~/.config/awesome/rc.lua"
alias yt="rofi_mpvtube"
alias ge="geany"
alias tf="terraform"
alias tf="sudo ./terraform "
#alias qq="socli "
alias qq="howdoi"
alias qqn="googler --news "
alias pip-upgrade="pip3 freeze --user | cut -d'=' -f1 | xargs -n1 pip3 install -U"
alias pip-upgrade-venv="pip3 freeze | cut -d'=' -f1 | xargs -n1 pip3 install -U"
alias ssss="~/.scripts/start.sh"
alias c="clear"
alias powershell="psh"
# Node and Node Accessories 
# Node Version Manager
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
#
alias nr='npm run'

# Is it bad to script something here?
alias fixhistory='mv ~/.zsh_history ~/.zsh_history_bad
strings -eS ~/.zsh_history_bad > ~/.zsh_history
fc -R ~/.zsh_history
rm ~/.zsh_history_bad'

alias mount='mount |column -t'
alias nmapz='nmap -sC -sV -oN delNmapOut -vv'
alias sfor='fortune -n 140'
alias sforo='while true ; do fortune -o -n 140; sleep 40; clear; done'  
alias sfors='while true; do fortune -n 140; sleep 25; clear; done'

# Remember
 # when activating python venv use 'source ./activate'
# alias rem='echo 
if [ -e /home/daria/.nix-profile/etc/profile.d/nix.sh ]; then . /home/daria/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

# . /home/daria/.nix-profile/etc/profile.d/nix.sh
#source $HOME/.nix-profile/etc/profile.d/nix.sh
