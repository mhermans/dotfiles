# .bash_profile - contains aliases and (atm) custom env
# sourced through .bashrc

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Force tmux to assume the terminal supports 256 colours
alias tmux="/usr/bin/tmux -2"

# CLI-tools 
alias hugo="$HOME/lib/hugo/hugo"
alias dropbox="$HOME/.dropbox-dist/dropboxd"
alias dbx="$HOME/lib/dropbox/dropbox.py"

# shortcut for build-in virtualenv, python3 not yet default 
alias virtualenv3='python3 -m virtualenv -p python3'

# Docker shorthands for common containers
# start dockerized Rstudio environment
#alias rstudio-docker="docker run -d -v $HOME/var:/home/rstudio/var -v $HOME/projects/:/home/rstudio/projects/ -p 8787:8787 mhermans/rworkenv"
alias rstudio-versioned="docker run -d -v $HOME/var:/home/rstudio/var -v $HOME/projects/:/home/rstudio/projects/ -p 8787:8787 mhermans/rversioned:0.1.2"
alias rstudio-blogenv="docker run -d -v $HOME/var:/home/rstudio/var -v $HOME/projects/:/home/rstudio/projects/ -p 8787:8787 mhermans/blogenv:0.0.1"

