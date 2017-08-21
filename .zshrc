unsetopt autocd beep

autoload -U compinit promptinit
compinit
promptinit

PROMPT='[%n@%m %~]$ '

setopt AUTO_NAME_DIRS
setopt RM_STAR_WAIT
setopt VI
export EDITOR="vi"
setopt NO_BEEP

alias ls='ls --color'
