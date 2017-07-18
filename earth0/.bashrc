# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
#source /opt/intel/composer_xe_2013/bin/compilervars.sh intel64
ROOT_LIBRARY_DIR=/work/data/GEOS/GEOS-Chem-Libraries
GC_BIN=$ROOT_LIBRARY_DIR/bin
GC_INCLUDE=$ROOT_LIBRARY_DIR/include
GC_LIB=$ROOT_LIBRARY_DIR/lib
export GC_BIN
export GC_INCLUDE
export GC_LIB


PATH=/usr/local/anaconda/bin:/opt/intel/bin:~/Util/git-flow/bin/:$PATH
export PATH

#export PATH=$PATH:~/Programs/bin
export PYTHONPATH=~/Library
export PYTHONPATH=~/Library/python/
export PATH=~/Library/python$PATH

export PYTHONSTARTUP=$HOME/.pythonstartup

##add path for openmp using gcc!
###export LD_LIBRARY_PATH=/usr/local/gcc-4.9.3/lib64/  #

#export LD_LIBRARY_PATH=/opt/sgi/perfboost/lib/:$LD_LIBRARY_PATH
#export LD_LIBRARY_PATH= /opt/intel2016/bin/:$LD_LIBRARY_PATH

#export LD_LIBRARY_PATH= /opt/intel2016/lib/intel64/:$LD_LIBRARY_PATH
## Intel Parallel Studio - earth0
if [ -f /opt/intel2016/bin/compilervars.sh ]; then
        source /opt/intel2016/bin/compilervars.sh -arch intel64 -platform linux
    fi
#need to use compield mpirun to run jobs
#alias mpirun="/opt/openmpi-gfortran/1.8.4/bin/mpirun"

export PATH=/work/home/dp626/Library/openMPI/bin/:$PATH
export LD_LIBRARY_PATH=/work/home/dp626/Library/openMPI/lib/:$LD_LIBRARY_PATH
alias pythonmpi=/opt/openmpi-gfortran/1.8.4/bin/mpirun


export KPP_HOME=/work/data/kpp-2.2.3
export PATH=$PATH:$KPP_HOME/bin

export LD_LIBRARY_PATH=/usr/local/netcdf-ifort/lib/:$LD_LIBRARY_PATH

#export OMP_NUM_THREADS=8
#export LD_LIBRARY_PATH=/opt/openmpi-gfortran/1.8.4/bin/:$LD_LIBRARY_PATH

PS1="\[$(tput setaf 2)\]\h \[$(tput setaf 199)\]\W/ \[$(tput sgr0)\]"

export TERM='xterm-256color'

#add kpp
#KPP_HOME=$HOME/DSMACC-master/kpp
#export KPP_HOME
#export PATH=$KPP_HOME/bin:$PATH
#HOW TO ADD PATHS
#add gfort
############################export PATH=/usr/local/gcc-4.9.3/bin/:$PATH
#mpi
#export PATH=/opt/openmpi-gfortran/1.8.4/bin/:$PATH
#lib folder
#export PATH=$PATH:~/Library/python/
export PATH=~/Library/:$PATH
export PATH=~/Library/CoolStuff/:$PATH
#cmake - in Library
#export PATH=$PATH:/work/home/dp626/Library/cmake/cmake-3.4.1-Linux-x86_64/bin
#have $path at end!!! updates in correct order

#MPI_HOME=/opt/openmpi-gfortran/1.8.4/
#MPI_RUN=/opt/openmpi-gfortran/1.8.4/bin/
#export PATH=/opt/openmpi-gfortran/1.8.4/:$PATH
#logo
#screen -rd session



PS1="\`pwd\` \$ " # show directory before prompt

# farbige Befehle im Terminal
alias ls='ls --color'
LS_COLORS='di=36;1:fi=0:ln=31:pi=5:so=33:bd=35:cd=5:or=41:mi=46:ex=1;32:*.rpm=90'
export LS_COLORS
alias ll='ls -al'
alias ia="qsub -I -X -l mem=8Gb -q run"

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

# aliases:
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
alias netcdf='ifort  -L/usr/local/netcdf-ifort/lib -I/usr/local/netcdf-ifort/include/ -lnetcdff'
alias lo='logout'
alias vim=~/Util/vim8.0/bin/vim


test -r /sw/bin/init.sh && . /sw/bin/init.sh
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

