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
export WORKON_HOME=~/.virtualenvs
source /usr/bin/virtualenvwrapper.sh
export OPSCODE_USER=wgill
export CHEF_URL=chef.krs.io
