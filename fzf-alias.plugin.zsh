#!/usr/bin/env zsh

function fzf_alias() {
    local selection
    # use sed with column to work around MacOS/BSD column not having a -l option
    if selection=$(alias | sed 's/=/\t/' | column -s '	' -t | fzf --query="$BUFFER" | awk '{ print $1 }'); then
        BUFFER=$selection
    fi
    zle redisplay
}

zle -N fzf_alias
bindkey -M emacs '\ea' fzf_alias
bindkey -M vicmd '\ea' fzf_alias
bindkey -M viins '\ea' fzf_alias
