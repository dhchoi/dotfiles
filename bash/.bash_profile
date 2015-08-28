### aliases
alias ls="ls -G"
alias ll="ls -alhG"
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
alias subl="open -a /Applications/Sublime\ Text.app/"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Added to include Android SDK
export PATH="/Users/dhchoi/Library/Android/sdk/platform-tools:$PATH"

### set /usr/local/bin before /usr/bin(system-provided programs) for homebrew
homebrew=/usr/local/bin:/usr/local/sbin:/usr/bin
export PATH=$homebrew:$PATH

### regarding terminal colors
# tell ls to be colorful
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad
# tell grep to highlight mathes
export GREP_OPTIONS="--color=auto"
# colored prompt
PS1="\[\e[0;31m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ "

### functions
function @google {
    open "https://google.com/search?q=$*"
}
# use as "@java-use 8"
function @java-use() {
    export JAVA_HOME=`/usr/libexec/java_home -v 1.$1`
}

### Added for NVM
export NVM_DIR="/Users/dchoi/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

### Added for setting local modules as priority
export PATH="node_modules/.bin:$PATH"

### Added to increase user limit of file descriptors
ulimit -n 4096
