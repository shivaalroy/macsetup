alias ll='ls -l'
alias la='ls -A'
alias gb='git branch'
alias gc='git commit'
alias gco='git checkout'
alias gcor='git checkoutr'
alias gdc='git diff --cached'
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
    alias kil="killall cloud_sql_proxy query_endpoint_binary; ps -ax -o pid,command | grep -e pubsub -e elast | awk '{print \$2}' | xargs -I% kill -9 %"
    alias sp='mkdir -p /tmp/cloudsql && cloud_sql_proxy -dir=/tmp/cloudsql'
    alias sw_shivaal='gcloud config set account shivaal@askscio.com; gcloud config set project scio-deployment;'
    alias openapi='./tools/generate-openapi-bindings.sh'

    activate_shivaal () {
        gcloud config set account shivaal@askscio.com
        if [ -z "$1" ]
        then
            PROJECT_ID=scio-deployment
        else
            PROJECT_ID=$1
        fi
        gcloud config set project $PROJECT_ID
    }

    activate_customer () {
        pbpaste > /tmp/key
        $HOME/workspace/scio/deploy/gcp/get_admin_key.sh /tmp/key /tmp/json
        PROJECT_ID=$(cat /tmp/json | jq -r .project_id)
        gcloud auth activate-service-account --key-file /tmp/json
        gcloud config set project $PROJECT_ID
    }

fi
