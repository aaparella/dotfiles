# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/alexanderp/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/alexanderp/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/alexanderp/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/alexanderp/.fzf/shell/key-bindings.zsh"
