bindkey -v # vi-mode
# in command mode "v" wil bring up the editor
autoload -z edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

bindkey '^ ' autosuggest-accept
bindkey '^A' autosuggest-execute

# Up and down arrow keys
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-backward 

# Replace standard history-incremental-search-{backward,forward} bindings.
# These are the same but permit patterns (eg. a*b) to be used.
bindkey "^r" history-incremental-pattern-search-backward
bindkey "^s" history-incremental-pattern-search-forward

# bindkey '^R' zaw-history
# bindkey -M vicmd "^[OP" autosuggest-execute
# bindkey -M viins "^[OP" autosuggest-execute

# Make CTRL-Z background things and unbackground them.
function fg-bg() {
  if [[ $#BUFFER -eq 0 ]]; then
    fg
  else
    zle push-input
  fi
}
zle -N fg-bg
bindkey '^Z' fg-bg
