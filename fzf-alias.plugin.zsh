#!/usr/bin/env zsh

function fzf_alias() {
    local selection
    if selection=$(alias | fzf | sed -re 's/=.+$/ /'); then
        LBUFFER=$selection
    fi
    zle redisplay
}

zle -N fzf_alias
bindkey '\ea' fzf_alias
