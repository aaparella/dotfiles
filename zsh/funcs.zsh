copy() {
    cat $1 | pbcopy
}

decode() {
    echo "$1" | base64 -D
}

killgrep() {
    ps -ef | grep "$1" | grep -v grep | awk '{print $2}' | xargs kill -9
}

function jwt-decode() {
    jq -R 'split(".") | .[1] | @base64d | fromjson' <<< $1
}

function config() {
    cd "/Users/alexanderp/.config/$1"
}
