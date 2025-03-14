#!/bin/bash

# # When terminal starts, TERM=xterm.
# # When inside tmux or screen, TERM=screen-256color.
# if ! [[ "${TERM}" =~ ^screen.* ]]; then
#   if [[ -x /usr/bin/tmux ]]; then
#     # If tmux is installed, use it:
#     tmux -u new -As0
#   else
#     # If tmux isn't available, fall back to screen:
#     export TERM=xterm-256color
#     /usr/bin/screen -xRR
#   fi
# fi

#if [[ -n "${TMUX}" ]]; then
#  # If we're inside tmux, alias "screen" to run a command in a new tmux window.
#  alias screen="tmux new-window"
#fi

export TERM=xterm-256color

export HISTFILE=~/".bash_history.${WINDOW}"

export TZ=US/Pacific
export GHUSER="${USER}-enf"
export PATH="${HOME}/bin:${PATH}"
eval `enkit agent print`

BAZEL_PROFILE=local-cache
export BAZEL_PROFILE

alias blaze=bazelisk
alias bazel=bazelisk
alias more=less

# User Aliases
if [ -f ~/.aliases ]; then
	source ~/.aliases
  echo "BASH : USER ALIASES Sourced !!!"
fi

function hist() {
  history | grep "$@" | grep -v "  hist"
}

#export PS1="\[\033[48;5;213;38;5;0m\]${PS1}\[\033[0m\]"
export PS1="[\u@\h \w]$ " # BASH-SHELL only

# if [ -f ~/bin/git-prompt.sh ]; then
# 	source ~/bin/git-prompt.sh
#   export GIT_PS1_SHOWDIRTYSTATE=1
#   export GIT_PS1_SHOWSTASHSTATE=1
#   export GIT_PS1_SHOWUNTRACKEDFILES=1
#   export GIT_PS1_SHOWUPSTREAM="auto"
#   export PROMPT_COMMAND="__git_ps1 \"\033k\033\134\033k\" \"\033\134\";"
#   export PROMPT_COMMAND+="__git_ps1 \"\${PS1}\033[48;5;213;38;5;0m\" \" [\\!] \\w\033[0m\n\$ \""
# 	# export PS1='$(__git_ps1 "(%s) ")'"${PS1}"
# fi
# source /usr/share/bash-completion/completions/git
#
# if [[ -f ~/gee/enkit/gee/scripts/gee ]]; then
#   eval "$(~/gee/enkit/gee/scripts/gee bash_setup)"
# elif [[ -f ~/gee/enkit/master/scripts/gee ]]; then
#   eval "$(~/gee/enkit/master/scripts/gee bash_setup)"
# elif command -v gee >/dev/null; then
#   eval "$(gee bash_setup)"
# fi
# if ! [[ $(type -t gee) == function ]]; then
#   echo "gee is not configured."
# fi

if [[ -e "${HOME}/.cargo/env" ]]; then
  . "${HOME}/.cargo/env"
fi

#temp for license file
export LM_LICENSE_FILE=5280@ls.corp.enfabrica.net
