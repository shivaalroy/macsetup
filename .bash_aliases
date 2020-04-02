alias ll='ls -l'
alias la='ls -A'
alias gb='git branch'
alias gc='git commit'
alias gco='git checkout'
alias gcor='git checkoutr'
alias gpu='git push --set-upstream origin $(git_current_branch)'
alias gs='git status'
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

if [ $(whoami) == "Shivaal" ]; then
    # Personal computer
    alias simpleserver='python -m SimpleHTTPServer 8000'
elif [ $(whoami) == "shivaal" ]; then
    # Work computer
    echo "work computer"
fi