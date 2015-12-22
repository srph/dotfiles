# alias
alias artisan='php artisan'

# PS1
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
export PS1=" λ \W \$git_branch >> " # λ srph ~./ (master)

# CLI
export CLICOLOR=1
export TERM=xterm-256color
