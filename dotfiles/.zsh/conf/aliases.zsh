#
## git
#
alias g='git'
alias gco='_gco'
alias gco.='_gco_revision'
alias gd="git diff"
alias ga="git add"
alias gm="git merge"
alias gaa="git add --all"
alias gds="git diff --staged"
alias gc='git commit'
alias gr='git remote'
alias gst='git status'
alias gp='git push'
alias glog='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'

#
## SYSTEM
#
alias -1='cd -'
alias -2='cd -2'
alias -3='cd -3'
alias -4='cd -4'
alias .z="source $DOTFILES/dotfiles/.zsh/.zshrc"
alias .z!="vim $DOTFILES/dotfiles/.zsh/.zshrc"
alias .zenv!="vim $HOME/.zshenv"
alias ls="ls -GFh"
# @DOTBOT:BREW(exa)
alias l="exa --all --binary --group --header --long --git --color=automatic"
alias la="exa --long --tree --all"
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'
alias e='exit'
alias :q='exit'
# @DOTBOT:BREW(glances)
alias top='glances'
alias htop='glances'
alias rmf='rm -rf'
alias mkc='mkcd'
alias mkd='mkcd'

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

#
## MISC
#
alias r='ranger'

