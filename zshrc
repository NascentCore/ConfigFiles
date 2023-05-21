# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="geoffgarside"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
# function precmd() {
#   print -rP '
#   %{$fg[cyan]%}%d%{$reset_color%} %t %W %{$fg[red]%}%n%{$reset_color%}@%{$fg[green]%}%m%{$reset_color%} $(git_prompt_info)'
# }
# PROMPT='%(!.#.$) '

# Disable auto correcting.
unsetopt correct_all

# Insist that CTRL-S and CTRL-Q be interpreted as control flow (scroll lock)
# signals.
stty -ixon -ixoff

# Just reset a things to default
# https://www.peachpit.com/articles/article.aspx?p=659655&seqNum=13
# stty sane

# Use bash-completion, if available
autoload bashcompinit
bashcompinit

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export GPG_TTY=$(tty)

source ~/.zshrcs/variables
source ~/.zshrcs/aliases
source ~/.zshrcs/functions
