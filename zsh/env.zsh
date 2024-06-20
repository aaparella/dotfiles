export EDITOR=nvim # Hell yeah

export HISTFILE=~/.zhistory
export SAVEHIST=1
export HISTSIZE=50000
export SAVEHIST=10000

export FZF_DEFAULT_COMMAND='fd --type f'

export N_PREFIX=~/.config/n

eval "$(pyenv init - --no-rehash)"
export C_INCLUDE_PATH=$(brew --prefix)/include
export LIBRARY_PATH=$(brew --prefix)/lib
