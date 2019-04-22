# If you come from bash you might have to change your $PATH.
export PATH=$HOME/.cargo/bin:$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# gets angry if I don't do this for login shell :/
export TERM="xterm-256color"

# for rofi
export XDG_DATA_DIRS="$HOME/.config/rofi:/usr/local/share:/usr/share"

# POWERLEVEL9K #
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL_9K_SHOW_WRITABLE=true
POWERLEVEL9K_SHORTEN_STRATEGY='truncate_middle'

# PROMPT
POWERLEVEL9K_PROMPT_ON_NEWLINE=false
POWERLEVEL9K_PROMPT_ADD_NEWLINE=false
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status vcs)
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=' '

# SEGMENTS
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=''
#POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=''

# DIR
  ## DEFAULT
  POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='none'
  POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='white'

  ## HOME
  POWERLEVEL9K_DIR_HOME_BACKGROUND='none'
  POWERLEVEL9K_DIR_HOME_FOREGROUND='012'
  
    ### SUBFOLDER
    POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='none'
    POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='012'

  ## ETC
  POWERLEVEL9K_DIR_ETC_BACKGROUND='none' 
  POWERLEVEL9K_DIR_ETC_FOREGROUND='130' # burnt orangey

# STATUS
  ## OK
  POWERLEVEL9K_STATUS_OK_BACKGROUND='234'
  POWERLEVEL9K_STATUS_OK_FOREGROUND='082' # bright yellow-green

  ## ERROR
  POWERLEVEL9K_STATUS_ERROR_BACKGROUND='167' 
  POWERLEVEL9K_STATUS_ERROR_FOREGROUND='234' # bright red

# VCS
  ## CLEAN
  POWERLEVEL9K_VCS_CLEAN_BACKGROUND='156' # light green
  POWERLEVEL9K_VCS_CLEAN_FOREGROUND='234' 

  ## MODIFIED
  POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='214' # mustard
  POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='234'

  ## UNTRACKED
  POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='203'  # pinkish 
  POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='234'
  

  

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

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
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    zsh-syntax-highlighting
    git
    colored-man-pages
    colorize
    extract
    history
    web-search
    fasd
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='emacs'
 else
   export EDITOR='emacs'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export BG_DIR=$HOME/Pictures/backgrounds

#test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

source $HOME/.aliases

#monitors for polybar
export MONITOR_0=eDP1
export MONITOR_1=HDMI1

# Start 1password manager
eval $(op signin my)

# needs to be at the end
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/yvn/dotfiles/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
