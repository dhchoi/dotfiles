################################
# Default Settings
################################

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

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
plugins=(
  git
  sublime
  python
  pip
  osx
  npm
  node
  last-working-dir
  jsontools
  history
  battery
)


################################
# User Settings (miscellaneous)
################################

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

# Added to increase user limit of file descriptors
ulimit -n 4096

# Set python pip to run only if there is an activated virtualenv
# export PIP_REQUIRE_VIRTUALENV=true


################################
# User Settings (paths)
################################

# export MANPATH="/usr/local/man:$MANPATH"

# Set /usr/local/bin before /usr/bin (system-provided programs) for homebrew and previous bash
export PATH="$HOME/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:$PATH"

# Added for setting local modules as priority
export PATH="node_modules/.bin:$PATH"

# Use Python from Homebrew as default
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# Added to include Android SDK
# export PATH="$HOME/Library/Android/sdk/platform-tools:$PATH"

# Loads nvm
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH=“$PATH:$HOME/.rvm/bin”


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

alias finder_open="open -a Finder ./"
alias finder_hidden_show="defaults write com.apple.finder AppleShowAllFiles YES" # >= OS X 10.11
alias finder_hidden_hide="defaults write com.apple.finder AppleShowAllFiles NO" # >= OS X 10.11
alias servelocal="python -m SimpleHTTPServer"


################################
## User Settings (functions)
################################

function @google() {
  open "https://google.com/search?q=$*"
}
function @java-use() { # use as "@java-use 8"
  export JAVA_HOME=`/usr/libexec/java_home -v 1.$1`
}
function @global-pip() { # use for managing pip globally
   PIP_REQUIRE_VIRTUALENV="" pip "$@"
}
