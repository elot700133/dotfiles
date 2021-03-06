#
# ~/.bashrc_common
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
set bell-style none

# common path
# export PATH=$PATH

# 
export EDITOR="vim"
# vim in bash shell
set -o vi

#
#export DISPLAY=localhost:0

# git utilities
#source /usr/share/git/completion/git-prompt.sh

#
source ~/.git-prompt.sh

# 
source ~/.git-completion.bsh

# bach-git-prompt
#GIT_PROMPT_ONLY_IN_REPO=1
#source ~/applications/bash-git-prompt/gitprompt.sh

# prompt
#PS1='\u@\h \w$(__git_ps1 " (%s)")\n\$ '
PS1='$(tput bold)$(tput setaf 2)\u$(tput sgr0)@$(tput bold)$(tput setaf 6)\h$(tput setaf 3) \w$(__git_ps1 " (%s)")$(tput sgr0)\n\$ '
#PS1='[\u@\h \W]\$ '

# History
export HISTIGNORE="ls:ll:cd"
export HISTSIZE=100000
export HISTCONTROL=ignoredups # ignorespace
export HISTTIMEFORMAT="[$(tput setaf 6)%F %T$(tput sgr0)]: " # colorful date

# alias common for all distros
test -f ~/.bashrc_custom && source ~/.bashrc_custom
test -f ~/.bash_alias && source ~/.bash_alias 

#exec `which zsh`
