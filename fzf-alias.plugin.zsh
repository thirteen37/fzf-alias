#!/usr/bin/env zsh

function fzf_alias() {
    local selection
    if selection=$(alias | fzf --query="$BUFFER" | sed -re 's/=.+$/ /'); then
        BUFFER=$selection
    fi
    zle redisplay
}

zle -N fzf_alias
bindkey -M emacs '\ea' fzf_alias
bindkey -M vicmd '\ea' fzf_alias
bindkey -M viins '\ea' fzf_alias
