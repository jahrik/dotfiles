#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt
PS1='[\u@\h \W]\$ '

# Path
PATH=${PATH}:${HOME}/bin
PATH="$PATH:$(ruby -e 'print Gem.user_dir')/bin"

# History
export HISTSIZE=10000
export HISTFILESIZE=20000
shopt -s histappend
export PROMPT_COMMAND='history -a'

# Python venv
export WORKON_HOME=~/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

# ENV
export EDITOR=vim
export BROWSER=/usr/bin/firefox

# Default w3m page
export HTTP_HOME='google.com'

# Alias
alias ls='ls --color=auto'
