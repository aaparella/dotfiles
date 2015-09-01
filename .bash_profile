# .bash_profile - OS X
#
# Original prompt statement backup:
# export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "

source ~/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true


# Change prompt statement, colors, etc 
# export PS1='[\u@mbp \w$(__git_ps1)]\ > '
export PS1='\[\e[1;37m\]\[\e[1;32m\]\u\[\e[0;39m\]@\[\e[1;36m\]\h\[\e[0;39m\]:\[\e[1;33m\]\w\[\e[0;39m\]\[\e[1;35m\]$(__git_ps1 " (%s)")\[\e[0;39m\]\[\e[1;37m\]\[\e[0;39m\]> '
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export EDITOR=vim

# GOPATH
export GOPATH=~/Projects/Go
export GOBIN=$GOPATH/bin

# Normal aliases
alias ls='ls -GFh'
alias lsa='ls -la'
alias cddt='cd /Users/alex/desktop/'
alias hi="echo \"hi <3\""
alias bye="logout"
alias getip="ipconfig getifaddr en1"
alias f="open -a Finder ./"
alias vi="mvim -v"
alias vim="mvim -v"

# Lazy searches (works but fix up later)
dash() {	
    open "dash://$1"
}
gg() {
    open "https://www.google.com/?gws_rd=ssl#q=$1+$2+$3+$4+$5+$6+$7+$8+$9"
}
yt() { 
    open "https://www.youtube.com/results?search_query=$1+$2+$3+$4+$5+$6+$7+$8+$9"
}
amz() {
    open "http://www.amazon.com/s/ref=nb_sb_noss?url=search-alias%3Daps&field-keywords=$1+$2+$3+$4+$5+$6+$7+$8+$9"
}
wiki() {
    open "http://en.wikipedia.org/wiki/$1_$2_$3_$4_$5_$6_$7_$8_$9"
}
dict() {
    open "http://www.thefreedictionary.com/$1"
}
trash() {
    read -p "Trash this file? (y/n): " choice
    if [ $choice = "y" ]; then
        mv $1 /Users/alex/.Trash
    fi
}

# Never again 
alias rm="rm -irv"

# Lazy ssh/sftp
alias sftpp="sftp -oPort=2222"
alias sshp="ssh -oPort=2222"
alias sshu="ssh aparella@pc14.cs.ucdavis.edu"
alias sftpu="sftp aparella@pc14.cs.ucdavis.edu"
sftpi() {
    sftp root@$1
}
sshi() {
    ssh root@$1
}

# Copy-to-clipboard aliases 
alias cwd='pwd | pbcopy'
alias cip='getip | pbcopy'

# PostgreSQL 
# export PATH=$PATH:/usr/local/pgsql/bin
alias pgstart='/usr/local/pgsql/bin/pg_ctl -D /usr/local/pgsql/data -l logfile start'

# MacPorts Installer addition on 2015-04-15_at_20:58:32: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
