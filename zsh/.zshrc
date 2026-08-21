# ZSH plugins
source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ZSH auto complete configuration
zstyle ':autocomplete:*' delay 2.0
zstyle ':autocomplete:*' min-input 3

bindkey              '^I'         menu-complete
bindkey "$terminfo[kcbt]" reverse-menu-complete
bindkey              '^I' menu-select
bindkey "$terminfo[kcbt]" menu-select
bindkey -M menuselect              '^I'         menu-complete
bindkey -M menuselect "$terminfo[kcbt]" reverse-menu-complete

# History configuration
export HISTFILE=~/.zsh_history
export HISTSIZE=1000
export SAVEHIST=1000
export SUDO_EDITOR=nvim

# Aliases
alias ls='ls --color=always'

# Source custom shortcuts
if [ -f $HOME/.zsh_shortcuts ]; then
    . $HOME/.zsh_shortcuts
fi

# Source custom exports
if [ -f $HOME/.zsh_exports ]; then
    . $HOME/.zsh_exports
fi

# Source dir colors
if [ -f $HOME/.dir_colors ]; then
    . $HOME/.dir_colors
fi

eval "$(starship init zsh)"

WORDCHARS=${WORDCHARS//\/}
