#
## git
#
alias g='git'
alias gco='git checkout'
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
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias .z="source $DOTFILES/dotfiles/.zsh/.zshrc"
alias .z!="vim $DOTFILES/dotfiles/.zsh/.zshrc"
alias .zenv!="vim $HOME/.zshenv"
alias ls="ls -GFh"
alias l="ls -la"
# @DOTBOT:BREW(exa)
alias la="exa --all --binary --group --header --long --git --color=automatic"
alias lst="exa --long --tree --all"
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
# open in vim
alias v='f -e nvim'

