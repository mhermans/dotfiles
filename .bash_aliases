# executed by .bashrc?
# contains aliases and (atm) custom env

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
