#
## git
#
alias g='git'
alias gco='git checkout'
alias gc='git commit'
alias gst='git status'
alias gp='git push'

#
## SYSTEM
#
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias .z="source $ZDOTDIR/.zshrc"
alias .z!="vim $ZDOTDIR/.zshrc"
alias .zenv!="vim $HOME/.zshenv"
alias ls="ls -GFh"
alias l="ls -la"
# brew install exa
alias la="exa -abghl --git --color=automatic"
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'
alias e='exit'
alias rmf='rm -rf'

#
## DOCKER
#
alias d='docker'
alias dc='docker-compose'

#
## PIPES
#
alias -g G="|grep" # Mnemonic: "[G]rep"
alias -g H="|head" # Mnemonic: "[H]ead"
# Pretty-print JSON.
alias -g J="|python -m json.tool" # Mnemonic: "[J]SON"
alias -g L="|less" # Mnemonic: "[L]ess"

#
## LARAVEL PHP NODE GO etc
#
alias a='php artisan'
alias c='composer'

