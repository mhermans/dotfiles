# executed by .bashrc?
# contains aliases and (atm) custom env

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias t='todo.sh'
alias gf='(python $HOME/projects/scratch/gf-mail.py &)'
alias trr='transmission-remote 192.168.1.173:9091'

alias tmux="$HOME/bin/tmux -2"
