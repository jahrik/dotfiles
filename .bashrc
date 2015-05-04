#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

PATH=${PATH}:${HOME}/bin
PATH="$PATH:$(ruby -e 'print Gem.user_dir')/bin"
export EDITOR=vim
export HISTSIZE=10000
export HISTFILESIZE=20000
shopt -s histappend
export PROMPT_COMMAND='history -a'
export WORKON_HOME=~/.virtualenvs
source /usr/bin/virtualenvwrapper.sh
export OPSCODE_USER=wgill
export CHEF_URL=chef.krs.io
