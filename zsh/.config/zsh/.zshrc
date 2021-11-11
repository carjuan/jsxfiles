#!/bin/sh

# Some useful options (man zshoptions)

setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments
stty stop undef   # Disable ctrl-s to freeze terminal
zle_highlight=('paste:none')  # Disables highlight text when pasting in terminal


# NO BEEP
unsetopt BEEP

#completions
autoload -Uz compinit

zstyle ':completion:*' menu select

zmodload zsh/complist

# compinit
_comp_options+=(globdots) # Include hidden files

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

# Colors
autoload -Uz colors && colors

# Useful Functions

source "$ZDOTDIR/zsh-functions"

is_zsh_history

# Source normal files 
zsh_source_file "zsh-exports"
zsh_source_file "zsh-aliases"
 zsh_source_file "zsh-prompt"
zsh_source_file "zsh-vim-mode"

# Plugin Manager
zsh_install_plugin "zsh-users/zsh-autosuggestions"
zsh_install_plugin "zsh-users/zsh-syntax-highlighting"
zsh_install_plugin "hlissner/zsh-autopair"
zsh_install_plugin "rupa/z"
# For more plugins: https://github.com/unixorn/awesome-zsh-plugins
#

# Install completion plugins
# zsh_add_completion "esc/conda-zsh-completion" false
# More completions https://github.com/zsh-users/zsh-completions

# Key-bindings
# bindkey "^p" up-line-or-beginning-search # Up
# bindkey "^n" down-line-or-beginning-search # Down
# bindkey "^k" up-line-or-beginning-search # Up
# bindkey "^j" down-line-or-beginning-search # Down

bindkey '^F' autosuggest-accept

compinit

# Edit line in vim with ctrl-e:
# autoload edit-command-line; zle -N edit-command-line
# bindkey '^e' edit-command-line

# Tmux developer workflows
# Create a pane horizontally, $HOME directory, 50% width of current pane
# $ tmux split -window -h -c  $HOME -p 50 vim

# NVM - Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# FZF source
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.zsh ] && source "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.zsh
