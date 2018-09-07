#
## git
#
alias g='git'
alias gco='_gco'
alias gco.='_gco_revision'
alias gd="git diff"
alias gb="git branch"
alias gt="git tag"
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
alias mk='mkdir -p'

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
## JAVA VERSION SWITCHER
#
# alias j12="export JAVA_HOME=`/usr/libexec/java_home -v 12`; java -version"
# alias j11="export JAVA_HOME=`/usr/libexec/java_home -v 11`; java -version"
alias j10="export JAVA_HOME=`/usr/libexec/java_home -v 10`; java -version"
# alias j9="export JAVA_HOME=`/usr/libexec/java_home -v 9`; java -version"
alias j8="export JAVA_HOME=`/usr/libexec/java_home -v 1.8`; java -version"
# alias j7="export JAVA_HOME=`/usr/libexec/java_home -v 1.7`; java -version"

#
## MISC
#
alias r='ranger'
alias cr='crystal'

