# Path to your oh-my-zsh installation.
export ZSH=/Users/mcsonka/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rvm vcs vi_mode)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs time)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9k_PROMPT_ADD_NEWLINE=true

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=blue"
plugins=(
  git
  bundler
  common-aliases
  compleat
  docker
  bgnotify
  git-extras
  rails
  git-it-on
  zsh-autosuggestions
  zsh-brew-services
  zsh-syntax-highlighting
  npm
  beamery
  vi-mode
  git-it-on
)

# User configuration

source $ZSH/oh-my-zsh.sh

source ~/.secrets

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# https://robots.thoughtbot.com/how-to-use-arguments-in-a-rake-task
unsetopt nomatch

export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GEM_HOME=$HOME/.gem
export GEM_PATH=$HOME/.gem

alias c="pbcopy"
alias p="pbpaste"
alias y="youtube-dl -i"
alias vimrc="vim ~/.vimrc"
alias tmuxrc="vim ~/.tmux.conf"
alias path="echo $PATH | tr -s ':' '\n'"
alias ggpf='git push origin $(current_branch) --force-with-lease'

COMPOSE_HTTP_TIMEOUT=1200

alias e='eval $(docker-machine env default)'
alias d='docker'
alias dc='docker-compose'
alias dm='docker-machine'
alias ber='bundle exec rspec'
alias berc='bundle exec rubocop'
alias berca='bundle exec rubocop --auto-correct'
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
export PATH="/usr/local/sbin:$PATH"

if [ -d "$HOME/bin" ]; then
  export PATH="$HOME/bin:$PATH"
fi


precmd() {
  # sets the tab title to current dir
  echo -ne "\e]1;${PWD##*/}\a"
}

export PATH="/usr/local/opt/v8-315/bin:$PATH"
export PATH="/usr/local/opt/node@6/bin:$PATH"

source ~/.custom_aliases
export PATH="/usr/local/opt/qt@5.5/bin:$PATH"

# https://github.com/shobhitpuri/git-refresh
export PATH=$PATH:~/Projects/git-refresh

export PATH="/usr/local/opt/openssl/bin:$PATH"

export PATH="/Users/mcsonka/Library/Python/2.7/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"


# add this configuration to ~/.zshrc
export HISTFILE=~/.zsh_history  # ensure history file visibility
export HH_CONFIG=hicolor        # get more colors
bindkey -s "\C-r" "\eqhh\n"     # bind hh to Ctrl-r (for Vi mode check doc)

export PGHOST=localhost
export PGUSER=postgres
