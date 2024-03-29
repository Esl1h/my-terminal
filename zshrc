autoload -Uz compinit
compinit

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(ram status root_indicator background_jobs history time)

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# hist log date format: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
    git
    git-flow
    bundler
    dotenv
    rake
    rbenv
    ansible
    aws
    docker-compose
    gitfast
    terraform
    vscode
    git-extras
    docker
    zsh-syntax-highlighting
    zsh-autosuggestions
    bgnotify
    kubectl
    kubetail
)

# Setup alias and exports:
export MANPAGER="/usr/bin/most -s"
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias k='kubectl'
source <(kubectl completion zsh)


export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus


source <(kubectl completion zsh)
alias k=kubectl
complete -F __start_kubectl k

# Install Ruby Gems to ~/gems
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"

# Install Golang
export PATH=$PATH:/usr/local/go/bin

autoload -U compinit && compinit
