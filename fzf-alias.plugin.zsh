#!/usr/bin/env zsh

FZF_ALIAS_OPTS=${FZF_ALIAS_OPTS:-"--preview-window up:3:hidden:wrap"}

function fzf_alias() {
    local selection
    # use sed with column to work around MacOS/BSD column not having a -l option
    if selection=$(alias |
                       sed 's/=/\t/' |
                       column -s '	' -t |
                       FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS $FZF_ALIAS_OPTS" fzf --preview "echo {2..}" --query="$BUFFER" |
                       awk '{ print $1 }'); then
        BUFFER=$selection
        CURSOR=$#BUFFER
    fi
    zle redisplay
}

zle -N fzf_alias
bindkey -M emacs '\ea' fzf_alias
bindkey -M vicmd '\ea' fzf_alias
bindkey -M viins '\ea' fzf_alias
