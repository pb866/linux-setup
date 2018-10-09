##
# DELUXE-USR-LOCAL-BIN-INSERT
# (do not remove this comment)
##
export PATH="/Users/peter/anaconda/bin:/usr/bin:/usr/local/bin:/Applications/bin/:$PATH:/opt/local/bin/"
export TMPDIR="/Users/peter/.tmp"
#

# aliases for navigation:
alias -- -='cd -'
alias .='cd'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias grep='grep -in'
/() { cd /; }

alias prot='cd ~/Drive/York/MAGNIFY/Photolysis/Protocol/GECKO/GECKOprot/KPP/'
alias tuv='cd ~/Drive/York/MAGNIFY/Photolysis/TUV/TUV_MCM4.0/SRC5.2.x/'
alias lst='cd ~/Drive/York/MAGNIFY/Photolysis/Protocol/MCM4/PHOTlist/'
alias dsm='cd ~/Drive/York/MAGNIFY/DSMACC/DSMACC/'
alias t2d='cd ~/Drive/York/MAGNIFY/DSMACC/DSMACCtools/TUV2DSMACC/'
alias dt='cd ~/Drive/York/MAGNIFY/DSMACC/DSMACCtools/'
alias eul='cd ~/Documents/EULER'

# shortcuts
alias vim='/Applications/vim8.0/bin/vim'
alias vim7='/usr/bin/vim'
alias gcc='/opt/local/bin/gcc-mp-6'
alias atom='/Applications/Atom.app/Contents/MacOS/Atom'

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
