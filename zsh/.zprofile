# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# start X if on TTY1
if [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]]
then
    exec startx
fi

export PATH="$HOME/.cargo/bin:$PATH"
