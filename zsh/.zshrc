################################
# Default Settings
################################

# Path to your oh-my-zsh installation.
# export ZSH=/Users/dchoi/.oh-my-zsh # set to correct directory

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ys"

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git terminalapp sublime python pip osx npm node last-working-dir jsontools history coffee brew battery)


################################
# User Settings (miscellaneous)
################################

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

source $ZSH/oh-my-zsh.sh

# Added to increase user limit of file descriptors
ulimit -n 4096


################################
# User Settings (paths)
################################

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

# Added to add path to node/npm
#export PATH="/Users/dchoi/.nvm/v0.10.38/bin:$PATH"
# OR
#export NVM_DIR="/Users/dchoi/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Added for setting local modules as priority
export PATH="node_modules/.bin:$PATH"

# As of go 1.2, a valid GOPATH is required to use the `go get` command
# You may wish to add the GOROOT-based install location to your PATH:
export PATH=$PATH:/usr/local/opt/go/libexec/bin

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Added to include Android SDK
#export PATH="/Users/dhchoi/Library/Android/sdk/platform-tools:$PATH"

# Set /usr/local/bin before /usr/bin(system-provided programs) for homebrew
#homebrew=/usr/local/bin:/usr/local/sbin:/usr/bin
#export PATH=$homebrew:$PATH


################################
# User Settings (aliases)
################################

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias goto_node="cd /Users/dhchoi/Documents/WorkspaceNode"
alias goto_web="cd /Users/dhchoi/Documents/WorkspaceWeb"
alias profile_reload=". ~/.bash_profile"
alias profile_edit="vim ~/.bash_profile"
alias mongod_start="mongod --config /usr/local/etc/mongod.conf"
alias psql_start="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias psql_stop="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log stop"
alias finder_open="open -a Finder ./"
alias finder_hidden_show="defaults write com.apple.finder ShowAllFiles TRUE"
alias finder_hidden_hide="defaults write com.apple.finder ShowAllFiles FALSE"
alias serve="python -m SimpleHTTPServer"


################################
## User Settings (functions)
################################

function @google() {
  open "https://google.com/search?q=$*"
}
function @java-use() { # use as "@java-use 8"
  export JAVA_HOME=`/usr/libexec/java_home -v 1.$1`
}
