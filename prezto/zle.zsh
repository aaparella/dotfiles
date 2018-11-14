bindkey -v                        # Vim mode

bindkey '^?' backward-delete-char # Backspace actually works
bindkey '^?' backward-delete-char # Backspace actually works
bindkey '^R' fzf-history-widget   # Required when using vim bindings

# Time to wait after character is entered to see if another character follows
export KEYTIMEOUT=1               
