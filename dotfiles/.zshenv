SYSTEM_PATH=$PATH
unset PATH

# keep these on separate lines to make changing their order easier
PATH=$HOME/bin
# PATH=$PATH:$HOME/.zsh/bin
PATH=$PATH:/usr/local/bin
PATH=$PATH:/usr/local/sbin
PATH=$PATH:$HOME/go/bin
PATH=$PATH:$SYSTEM_PATH
export PATH

# ziish goes there
export ZDOTDIR=$HOME/.zsh

export ZPLUG_HOME=$ZDOTDIR/.zplug
