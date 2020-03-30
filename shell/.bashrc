RED="\[\033[0;31m\]"
GREEN="\[\033[0;32m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[0;34m\]"
CLEAR="\[\033[0m\]"

ps1prompt() {
    PS1="$GREEN\u$RED@$YELLOW\h $BLUE\w$CLEAR "

    branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null)
    [ -z "$branch" ] && PS1="$PS1""\$ " && return
    status=$(git status -s 2>/dev/null);
    if [ -n "$status" ]; then
        PS1="$PS1""$RED"
    else
        PS1="$PS1""$GREEN"
    fi
    PS1="$PS1""($branch)$CLEAR \$ "
}

PROMPT_COMMAND='ps1prompt'
HISTCONTROL=ignoreboth
HISTSIZE=5000
export EDITOR=vim
export VISUAL=vim
set -o vi

alias ls='ls --color'
alias vimlast='vim `git diff-tree --no-commit-id --name-only -r HEAD`'
alias master='git checkout master'
alias kp='kill -9 `ps -e | fzf | awk '"'"'{print $1}'"'"'`'

repeat() {
    number=$1
    shift
    for i in `seq $number`; do
      $@
    done
}

source /usr/share/bash-completion/completions/git

test -f ~/.bashrc_local && source ~/.bashrc_local
