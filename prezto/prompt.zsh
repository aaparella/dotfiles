function abbreviated_pwd {
    home=$(echo ~)

    if [[ $(pwd) = ${home}* ]]; then
        prefix="~"
    else
        prefix=""
    fi

    ending=$(pwd | sed -e "s#^${home}##")
    pieces=("${(@s#/#)ending}")
    count=${#pieces[*]}

    suffix=""

    if [[ $count = 1 ]]; then
        suffix=""
    else
        for ((i = 1; i < $count; i++)); do
            directory=$pieces[i]
            if [[ $directory = "" ]]; then
            else
                first_letter=${directory:0:1}
                suffix+="/${first_letter}"
            fi
        done

        directory=$pieces[i]
        suffix+="/${directory}"
    fi

    print "$prefix$suffix"
}

function git_branch {
    git branch --show-current 2> /dev/null
}

source $HOME/Code/gitstatus/gitstatus.plugin.zsh

function update_prompt {
  PROMPT="%n@%m %F{2}$(abbreviated_pwd)%F{7}> "
  RPROMPT='$(git_branch)'

  # if gitstatus_query MY && [[ $VCS_STATUS_RESULT == ok-sync ]]; then
  #   RPROMPT=${${VCS_STATUS_LOCAL_BRANCH:-@${VCS_STATUS_COMMIT}}//\%/%%}  # escape %
  #   [[ $VCS_STATUS_HAS_STAGED    == 1 ]] && RPROMPT+='+'
  #   [[ $VCS_STATUS_HAS_UNSTAGED  == 1 ]] && RPROMPT+='!'
  #   [[ $VCS_STATUS_HAS_UNTRACKED == 1 ]] && RPROMPT+='?'
  # fi

  # setopt noprompt{bang,subst} promptpercent  # enable/disable correct prompt expansions
}

precmd() { update_prompt }
