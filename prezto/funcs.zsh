decode() {
    echo "$1" | base64 -D
}

killgrep() {
    ps -ef | grep "$1" | grep -v grep | awk '{print $2}' | xargs kill -9
}
