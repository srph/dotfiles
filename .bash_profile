# alias
alias moon='curl wttr.in/moon'
alias weather='curl wttr.in/manila'
alias artisan='php artisan'
alias gaa='git add .'
alias gc='git commit'
alias gdiff='git diff ^HEAD'
alias gp='git push'
# http://ss64.com/bash/alias.html
alias ..='cd ..'
# http://ianlunn.co.uk/articles/quickly-showhide-hidden-files-mac-os-x-mavericks/
# Relaunch Finder afterwards (Alt/Option + Context Click Finder)
alias show.files='defaults write com.apple.finder AppleShowAllFiles YES'
alias hide.files='defaults write com.apple.finder AppleShowAllFiles NO'
alias r='npm run'
alias cdc='cd /mnt/c/Code'

# Composer
export COMPOSERPATH="$HOME/.composer"
export PATH="$PATH:$COMPOSERPATH/vendor/bin"

# Go
export GOPATH="$HOME/.go"
export GOROOT="/usr/local/go"
export PATH="$PATH:$GOROOT/bin"
export GO111MODULE=on
# GVM
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"

# PS1
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
export PS1="λ \W \$git_branch → " # λ srph ~./ (master)

# CLI
export CLICOLOR=1
export TERM=xterm-256color

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Android
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Python
export PATH=$PATH:$HOME/Library/Python/3.7/bin

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# psql
PATH=$PATH:/usr/lib/postgresql/9.6/bin

# Personal Scripts
export PATH=$PATH:$HOME/.personal-scripts
