alias ll='ls -l'
alias la='ls -A'
alias gb='git branch'
alias gc='git commit'
alias gco='git checkout'
alias gcor='git checkoutr'
alias gpu='git push --set-upstream origin $(git_current_branch)'
alias gs='git status'
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

if [ $USER = "Shivaal" ]; then
    # Personal computer
    alias simpleserver='python -m SimpleHTTPServer 8000'
elif [ $USER = "shivaal" ]; then
    # Work computer
    alias bb='bazel build'
    alias bba='bazel build //...'
    alias bt='bazel test'
    alias bta='bazel test --test_output=summary //...'
    alias bte='bt --test_output=errors'
    alias btta='bt --test_output=all'
    alias br='bazel run'
    alias deploy='bba && bta && .bazel/bin/python_scio/deployment/deploy --skip_test'
fi
