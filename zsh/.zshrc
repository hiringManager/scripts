# If you come from bash you might have to change your $PATH.

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="garyblessington"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting zsh-autosuggestions bgnotify colorize aws docker-compose docker colored-man-pages)

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'


source $ZSH/oh-my-zsh.sh

# User configuration

export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias ohmyzsh="mate ~/.oh-my-zsh"


#ELENA

# Cursor
#echo -e -n "\x1b[\x30 q" # changes to blinking block
#echo -e -n "\x1b[\x31 q" # changes to blinking block also
#echo -e -n "\x1b[\x32 q" # changes to steady block
#echo -e -n "\x1b[\x33 q" # changes to blinking underline   
echo -e -n "\x1b[\x34 q" # changes to steady underline
#echo -e -n "\x1b[\x35 q" # changes to blinking bar
#echo -e -n "\x1b[\x36 q" # changes to steady bar

export HISTSIZE=500000
export SAVEHIST=500000
# export MANPATH="/usr/local/man:$MANPATH"

#This causes pasted URLs to be automatically escaped, without needing to disable globbing.
autoload -Uz bracketed-paste-magic
zle -N bracketed-paste bracketed-paste-magic
autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic

# Import colorscheme from wal
# (~/.local/bin/wal -qR &)

# Find new executables in path
zstyle ':completion:*' rehash true


###PATHS


#export PATH="/home/daria/Applications/Appimage:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/share/flatpak/exports/bin:$PATH"

###ALIASES


#alias weeb="wal -i ~/.wallpaper/Anime/landscapes"
alias p2="~/.color-toys/pipes2"
alias nf="neofetch"
alias brc="vim ~/.bashrc"
alias zrc="vim ~/.zshrc"
alias frc="vim ~/.fishrc"
alias sai="sudo apt install "
alias sau="sudo apt update && sudo apt upgrade -y"
alias saaa="sudo apt autoremove && sudo apt clean && sudo apt autoclean && sudo apt update && sudo apt upgrade"
alias qa="python3 ~/.local/bin/quail"
alias ic="vim ~/.config/i3/config"
alias ttt="cd ~/Applications/Bin/ && ./terraform"
alias ia="vim ~/.config/awesome/rc.lua"
alias zac="geany ~/.config/awesome/rc.lua"
alias orc="emacs ~/.config/openbox/rc.xml"
#alias frc="vim ~/.fluxbox/keys"
#alias arc="emacs ~/.config/awesome/rc.lua"
alias yt="rofi_mpvtube"



#QUICK ALIASES

#alias wb="wal -i ~/.wallpaper/Anime/landscapes"

alias ge="geany"
alias tf="terraform"
alias tf="sudo ./terraform "
#alias wbl="wal -i ~/.wallpaper/WallpaperDump/"
alias qq="googler"

#alias xfcdz="xfce4-terminal --drop-down"

#eval $(thefuck --alias)

alias hh="howdoi"
alias qqn="googler --news "

alias pip-upgrade="pip3 freeze --user | cut -d'=' -f1 | xargs -n1 pip install -U"
alias pip-upgrade-venv="pip3 freeze | cut -d'=' -f1 | xargs -n1 pip install -U"

alias ssss="~/.scripts/start.sh"
alias xrandscalething="xrandr --dpi 76 --output HDMI-0"
alias wbb="wb -b 2f2f2f"


#alias xc4="xfce4-terminal --drop-down"
alias nf="screenfetch"
alias powershell="pwsh"
#alias wbd="wal -i ~/.wallpaper/mechanical/"
