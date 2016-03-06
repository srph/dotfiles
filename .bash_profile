# alias
alias moon='curl wttr.in/moon'
alias weather='curl wttr.in/manila'
alias artisan='php artisan'
alias gaa='git add .'
alias gc='git commit'
alias gdiff='git diff ^HEAD'
alias gp='git push'

# Composer
export COMPOSERPATH="$HOME/.composer"
export PATH="$PATH:$COMPOSERPATH/vendor/bin"

# Go
export GOPATH="$HOME/.go"
export PATH="$PATH:$GOPATH/bin"

# PS1
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
export PS1="λ \W \$git_branch → " # λ srph ~./ (master)

# CLI
export CLICOLOR=1
export TERM=xterm-256color
