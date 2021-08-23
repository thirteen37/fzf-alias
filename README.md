# Find aliases with fzf

Too many aliases and not sure which one to use? Yeah, I get that too because of all those [OMZ](https://ohmyz.sh/) plugins.

This plugin will help with that. It's a ZLE widget you can activate with `Alt-a` or `Option-a` ('a' for alias) to find your aliases. 

## Installation

### Pre-requisites

You will need [fzf](https://github.com/junegunn/fzf).

### Install this plugin

#### `ohmyzsh`

1. `cd ~/.oh-my-zsh/custom/plugins`
2. `git clone git@github.com:thirteen37/fzf-alias.git fzf-alias`
3. Add `fzf-alias` to your `.zshrc` plugin list `plugins=(... fzf-alias)`

#### `zgen` or `zgenom`

Add `zgen load thirteen37/fzf-alias` or `zgenom load thirteen37/fzf-alias` to your `.zshrc`

#### `antigen`

Add `antigen bundle thirteen37/fzf-alias` to your `.zshrc`
