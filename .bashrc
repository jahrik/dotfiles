#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt
PS1='[\u@\h \W]\$ '

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
export BROWSER=/usr/bin/chromium

# Default w3m page
export HTTP_HOME='google.com'

# Alias
alias ls='ls --color=auto'
alias docker_destroy="docker ps -a -q | xargs -n1 docker stop && docker ps -a -q | xargs -n1 docker rm"
alias docker_clean="docker images | grep none | awk '{ print $3 }' | xargs -n1 docker rmi"
alias stopvpn="ps waux | grep vpn | awk '{ print $2 }' | head -n 3 | xargs sudo kill"
alias git="/usr/bin/git"

# Path
PATH=${PATH}:${HOME}/bin
PATH=${PATH}:/opt
PATH="$PATH:$(ruby -e 'print Gem.user_dir')/bin"
