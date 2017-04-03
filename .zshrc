# Path to your oh-my-zsh installation.
export ZSH=/Users/mcsonka/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="re5et"

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
plugins=(git bundler common-aliases compleat docker git-extras jira rails bgnotify git-it-on zsh-autosuggestions zsh-brew-services zsh-syntax-highlighting npm)

# User configuration

export PATH="$PATH:/Users/mcsonka/.rvm/gems/ruby-2.3.0/bin:/Users/mcsonka/.rvm/gems/ruby-2.3.0@global/bin:/Users/mcsonka/.rvm/rubies/ruby-2.3.0/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/mcsonka/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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

export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GEM_HOME=$HOME/.gem
export GEM_PATH=$HOME/.gem


alias c="pbcopy"
alias p="pbpaste"
alias y="youtube-dl -i"
alias vim="mvim -v"
alias vimrc="vim ~/.vimrc"
alias tmuxrc="vim ~/.tmux.conf"
alias path="echo $PATH | tr -s ':' '\n'"
eval "$(thefuck --alias)"
export EDITOR="mvim -v"
alias ggpf='git push origin $(current_branch) --force-with-lease'

PATH="/Users/mcsonka/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/mcsonka/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/mcsonka/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/mcsonka/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/mcsonka/perl5"; export PERL_MM_OPT;
COMPOSE_HTTP_TIMEOUT=1200

alias nginx='sudo env rvm_trust_rvmrcs_flag=1 /usr/local/bin/nginx'
alias stopnginx='sudo /usr/local/bin/nginx -s stop'
alias e='eval $(docker-machine env default)'
alias dc='docker-compose'
alias ber='bundle exec rspec'
alias berc='bundle exec rubocop'
alias berca='bundle exec rubocop --auto-correct'
export PATH="/usr/local/sbin:$PATH"

precmd() {
  # sets the tab title to current dir
  echo -ne "\e]1;${PWD##*/}\a"
}


eval "$(fasd --init posix-alias zsh-hook)"
[[ `docker-machine status` = "Running" ]] && eval $(docker-machine env default)

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="/usr/local/opt/v8-315/bin:$PATH"
export PATH="/usr/local/opt/node@6/bin:$PATH"

source ~/.custom_aliases
