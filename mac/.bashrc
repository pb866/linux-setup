##
# DELUXE-USR-LOCAL-BIN-INSERT
# (do not remove this comment)
##
export PATH=$PATH:/Users/peter/Applications/bin:/usr/local/bin:/Applications/bin/
#

# aliases for navigation:
alias cd..='cd ..'
alias cd2='cd ../..'
alias cd3='cd ../../..'
alias cd4='cd ../../../..'
alias cd5='cd ../../../../..'
alias cd6='cd ../../../../../..'

alias prot='cd ~/Google\ Drive/York/MAGNIFY/Photolysis/Protocol/GECKO/GECKOprot/KPP/'
alias tuv='cd ~/Google\ Drive/York/MAGNIFY/Photolysis/TUV/TUV_MCM4.0/SRC5.2.1/'
alias lst='cd ~/Google\ Drive/York/MAGNIFY/Photolysis/Protocol/MCM4/PHOTlist/'
alias dsm='cd ~/Google\ Drive/York/MAGNIFY/DSMACC/DSMACC/'
alias t2d='cd ~/Google\ Drive/York/MAGNIFY/DSMACC/DSMACCtools/TUV2DSMACC/'
alias dt='cd ~/Google\ Drive/York/MAGNIFY/DSMACC/DSMACCtools/'

# shortcuts
alias vim='/Applications/vim8.0/bin/vim'
alias vim7='/usr/bin/vim'
alias gcc='/opt/local/bin/gcc-mp-6'

# Same colour schemes in tmux:
# alvim() {
#     TERM=screen-256color vim $1
# }
# alias vim=alvim

PS1="\`pwd\` \$ " # show directory before prompt
alias ls='ls -G'
alias ll='ls -al -G'
# farbige Befehle im Finder
export LSCOLORS=GxfxcxdxcxexexabagGxGx

# Git branch and status in prompt.
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\[\033[96m\][\[\033[32m\]\w\[\033[33m\]$(__git_ps1 " (%s)")\[\033[96m\]]$\[\033[00m\] '

# No duplicate entries in bash history
export HISTCONTROL=ignoredups

# Git autocompletion
source ~/.git-completion.bash

# to show user@host use: \u@\h


##
# Your previous /Users/peter/.bash_profile file was backed up as /Users/peter/.bash_profile.macports-saved_2015-10-26_at_14:10:16
##

# MacPorts Installer addition on 2015-10-26_at_14:10:16: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


test -r /sw/bin/init.sh && . /sw/bin/init.sh
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
