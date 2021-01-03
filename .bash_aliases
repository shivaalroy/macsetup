alias ll='ls -l'
alias la='ls -A'
alias gb='git branch'
alias gc='git commit'
alias gco='git checkout'
alias gcor='git checkoutr'
alias gpu='git push --set-upstream origin $(git_current_branch)'
alias grev='git revert'
alias grh='git reset'
alias grhh='git reset --hard'
alias grs='git restore'
alias gs='git status'
alias gst='git stash'
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
    alias config='br //python_scio/deployment:config_util --'
    alias deploy='br //python_scio/deployment:deploy --'
    alias docs='br //python_scio/scripts:run_docstore_reader -- --table_name=Documents --project=$(gcloud config get-value project)'
    alias escrud='br //python_scio/scripts/tools/escrud:escrud -- -P $(gcloud config get-value project)'
    alias kil='killall cloud_sql_proxy query_endpoint_binary'
    alias sp='mkdir -p /tmp/cloudsql && cloud_sql_proxy -dir=/tmp/cloudsql'
    alias sw_shivaal='gcloud config set account shivaal@askscio.com; gcloud config set project scio-deployment;'
    alias swag='./tools/generate-swagger-bindings.sh query_endpoint'

    sw_customer () {
        gcloud auth activate-service-account --key-file="$1"
        PROJECT_ID=`cat "$1" | jq -j .project_id`
        echo "Set project to: [$PROJECT_ID]"
        gcloud config set project -q `cat "$1" | jq -j .project_id`
    }
fi
