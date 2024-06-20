alias vim="nvim"
alias vi="nvim"

alias l="ls"
alias ls="ls -lFGh"

alias -- -='cd -'
alias -g ..='cd ..'
alias -g ...='cd ../..'
alias -g ....='cd ../../..'
alias -g .....='cd ../../../..'
alias -g ......='cd ../../../../..'

# Not sure why this is needed tbh! Homebrew doesn't want to link ctags
# into /usr/local so we have to use an alias to call the homebrew installed
# version.
alias ctags="`brew --prefix`/bin/ctags"

alias -s go=vim
alias -s jar="java -jar"

alias tree="erdtree"
