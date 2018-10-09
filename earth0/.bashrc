uni# General earth0 environment settings (paths, GEOS-CHEM,...)
source /etc/bashrc_earth0/scripts/bashrc

export PATH="~/Util/git-flow/bin/:$PATH"

export KPP_HOME=/work/data/kpp-2.2.3
export PATH=$PATH:$KPP_HOME/bin

PS1="\[$(tput setaf 2)\]\h \[$(tput setaf 199)\]\W/ \[$(tput sgr0)\]"

export TERM='xterm-256color'

PS1="\`pwd\` \$ " # show directory before prompt

# coloured terminal output
alias ls='ls --color'
LS_COLORS='di=36;1:fi=0:ln=31:pi=5:so=33:bd=35:cd=5:or=41:mi=46:ex=1;32:*.rpm=90'
export LS_COLORS
alias ll='ls -al'

# Interactive mode with qsub
alias ia="qsub -I -X -l mem=8Gb -q interactive"

# Default settings for Makefile
export CC=icc
export CXX=icpc
export CFLAGS='-O3 -xHost -ip -no-prec-div -static-intel'
export CXXFLAGS='-O3 -xHost -ip -no-prec-div -static-intel'
export F77=ifort
export FC=ifort
export F90=ifort
export FFLAGS='-O3 -xHost -ip -no-prec-div -static-intel'
export CPP='icc -E'
export CXXCPP='icpc -E'

# Git branch and status in prompt.
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\[\033[96m\][\[\033[35m\]\u@\h:\[\033[32m\]\w\[\033[33m\]$(__git_ps1 " (%s)")\[\033[96m\]]$\[\033[00m\] '
source ~/Util/git-flow/git-flow-completion.bash

# No duplicate entries in bash history
export HISTCONTROL=ignoredups

# aliases/shortcuts:
alias dsm='cd ~/DSMACC/DSMACC'
alias prot='cd ~/GECKO/KPP'

alias cd..='cd ..'
alias cd2='cd ../..'
alias cd3='cd ../../..'
alias cd4='cd ../../../..'
alias cd5='cd ../../../../..'
alias cd6='cd ../../../../../..'

alias v=view
alias s='screen -rd session'
alias top="/usr/bin/top -i"
alias cpuinfo="cat /proc/cpuinfo"
alias netcdf='ifort  -L/opt/netcdf/complete/lib -I/opt/netcdf/complete/include -lnetcdff'
alias lo='logout'
alias vim=vim8

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
