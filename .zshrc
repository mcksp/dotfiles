unsetopt autocd beep

autoload -U compinit promptinit
compinit
promptinit

PROMPT='[%n@%m %~]$ '

setopt AUTO_NAME_DIRS
setopt RM_STAR_WAIT
setopt VI
setopt NO_BEEP
export EDITOR="vim"

alias ls='ls --color'
