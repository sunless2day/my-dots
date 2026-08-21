#fastfetch

# simple shortcuts
alias cf='clear && fastfetch'
alias ff='fastfetch'
alias sc='source ~/.zshrc'
alias q='exit'
alias p='python'
alias cc='clang'
alias cr='cargo run'

# customizing PS
PS1='%F{cyan}%n@%m%f %F{blue}%~%f'$'\n''%F{white}>>%f '
#PS1='%F{blue}%~%f'$'\n''%F{white}>>%f '
# case insensitivity
setopt nocaseglob

# correcting your silly mistakes
setopt correct

# cd without actually using cd
setopt autocd

# tab completion
autoload -Uz compinit
compinit

# colors
autoload -Uz colors
colors

eval "$(dircolors ~/.dircolors)"
alias ls='ls --color=auto'

# style of the autocompletion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# highlight the autocompletion
zstyle ':completion:*' menu select

# zsh history
HISTFILE="$HOME/.zsh_history"
HISTSIZE=100000
SAVEHIST=100000

setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt EXTENDED_HISTORY

# kitty hotfixes
export KITTY_SHELL_INTEGRATION="no-cursor"
alias cl='clear && printf "\e[3J"'


#Adding cargo's binary folder to path
export PATH="$PATH:$HOME/.cargo/bin"
