# makes tab-completion to work on dotfiles
setopt globdots

# if not a command, cd then,
setopt autocd

# no duplicates in history
setopt pushd_ignore_dups

# enables fancy 'cd -1' .. 'cd -9'
setopt auto_pushd
setopt pushdminus

# expands the percent stuff in prompts
setopt PROMPT_SUBST

# ...........
export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE
export KEYTIMEOUT=1 # kills the lag
