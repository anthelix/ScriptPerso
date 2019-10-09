# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/schatagn/.oh-my-zsh"


# script perso
# pour affichier master si dossier git
paste <(CLICOLOR_FORCE=true ls -ld *) <(for i in *; do if [ -d "$i"/.git ] ; then echo "($(git --git-dir="$i"/.git symbolic-ref --short HEAD))"; else echo; fi; done)
# m'obliger a utiliser les alias
function check-alias-and-accept {
  if [ $BUFFER ]; then

    ALIAS=`alias -L | grep -e "=[\'\"]\?${BUFFER}[\'\"]\?$"`

    if [ $ALIAS ]; then
      echo
      echo "You have this alias:"
      echo
      echo $ALIAS
      echo
      echo "Use it!"

      zle kill-whole-line
      zle reset-prompt
    else
      zle accept-line
    fi
  else
    zle accept-line
  fi
}

zle -N check-alias-and-accept
bindkey '^J' check-alias-and-accept
bindkey '^M' check-alias-and-accept

#pour ne pas oublier un alias explicite, affiche l'entree juste apres l'alias
preexec_functions=()

function expand_aliases {
  input_command=$1
  expanded_command=$2
  if [ $input_command != $expanded_command ]; then
    print -nP $PROMPT
    echo $expanded_command
  fi
}

preexec_functions+=expand_aliases

#  script demarrage spyder ou jupyter
alias start_xcode="sh ~/Documents/script/.start_xcode.sh"
alias start_jupyter="sh ~/Documents/script/start_jupyter.sh"
alias start_python="sh ~/Documents/script/start_python.sh"
# Path to miniconda3 installation
export PATH="/Users/schatagn/goinfre/miniconda3/bin:$PATH"

# alias de reseau pour init
alias listports="networksetup -listallhardwareports" 

# pour resoudre pb de mise a our du sevice Cron
# Locales
export LANGUAGE=fr_FR.UTF-8
export LANG=fr_FR.UTF-8
export LC_ALL=fr_FR.UTF-8
 
                 
# perso"

alias delete.ds="find . -name '.DS_Store' -type f -print -delete"
alias delete.g="find . -name '.git' -type f -print -delete"
alias sz="source ~/.zshrc"
alias te="tree -CA"
alias te2="tree -CAL 2"
alias lz="ls && sz"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=random


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
DISABLE_UNTRACKED_FILES_DIRTY="true"

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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(brew common-aliases gitfast nvm git battery)





source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


#export PATH=$HOME/.brew/bin:$PATH
#export PATH=/Users/schatagn/.brew/bin:/Users/schatagn/.brew/bin:/Users/schatagn/.brew/bin:/sgoinfre/goinfre/Perso/schatagn/miniconda3/bin:/sgoinfre/goinfre/Perso/schatagn/miniconda3/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Library/Frameworks/Mono.framework/Versions/Current/Commands:/usr/local/munki
export PATH=$HOME/.brew/bin:$PATH
export PATH=/Users/schatagn/.brew/bin:/Users/schatagn/.brew/bin:/Users/schatagn/.brew/bin:/Users/schatagn/goinfre/miniconda3/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Library/Frameworks/Mono.framework/Versions/Current/Commands:/usr/local/munki
export PATH=$HOME/.brew/bin:$PATH
export PATH=/Users/schatagn/.brew/bin:/Users/schatagn/.brew/bin:/Users/schatagn/.brew/bin:/Users/schatagn/.brew/bin:/Users/schatagn/.brew/bin:/Users/schatagn/.brew/bin:/Users/schatagn/goinfre/miniconda3/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Library/Frameworks/Mono.framework/Versions/Current/Commands:/usr/local/munki
