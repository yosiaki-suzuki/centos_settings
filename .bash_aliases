# User specific aliases and functions
if [ -f ~/.bash_aliases ]; then
   . ~/.bash_aliases
fi

# show git branch name
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}

# change the prompt color
function promps {
  local  BLUE="\[\e[1;34m\]"
  local  RED="\[\e[1;31m\]"
  local  GREEN="\[\e[1;32m\]"
  local  WHITE="\[\e[00m\]"
  local  GRAY="\[\e[1;37m\]"
  local  PINK="\[\e[1;35m\]"
  local  ORANGE="\[\e[0;33m\]"
  local  SKYBLUE="\[\e[1;36m\]"
  
  case $TERM in
     xterm*) TITLEBAR='\[\e]0;\W\007\]';;
     *)      TITLEBAR="";;
  esac
  
  local BASE="\u@\h"
  PS1="${TITLEBAR}${SKYBLUE}${BASE}${WHITE}:${SKYBLUE}\W${ORANGE}\$(parse_git_branch)${WHITE}\$${WHITE} "
}

# change the directory color
eval `dircolors ~/.dircolors`
