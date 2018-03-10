SYSTEM_PATH=$PATH
unset PATH

export GOPATH=$HOME/go
# keep these on separate lines to make changing their order easier
PATH=$HOME/bin
# PATH=$PATH:$HOME/.zsh/bin
PATH=$PATH:/usr/local/bin # $(brew --prefix)/bin
PATH=$PATH:/usr/local/sbin
PATH=$PATH:$GOPATH/bin
PATH=$PATH:$SYSTEM_PATH
export PATH

# ziish goes there
export ZDOTDIR=$HOME/.zsh

export ZPLUG_HOME=$ZDOTDIR/.zplug
