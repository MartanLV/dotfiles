# vim: set fdm=syntax :
#
# setopt XTRACE VERBOSE # uncomment to debug
### NOTES
# * to get key combination sends for your terminal use: sed -n
# * tab key terminal keybinding is ^I
#__

setopt hist_ignore_dups
setopt share_history
alias vim='nvim'

# zsh-ccomp zsh-ccomp-install zsh-wcomp zsh-wcomp-install # are for word&tab completions
eval "$(fasd --init env zsh-hook zsh-ccomp posix-alias zsh-ccomp-install zsh-wcomp zsh-wcomp-install)"

source ~/.zsh/conf/aliases.zsh
source ~/.zsh/conf/colors.zsh
source ~/.zsh/conf/common.zsh
source ~/.zsh/conf/helpers.zsh
source ~/.zsh/conf/hooks.zsh
source ~/.zsh/conf/keybindings.zsh
source ~/.zsh/conf/prompts.zsh

# man zshzle # all man pages via vim
export MANPAGER="col -b | vim -MR -c 'set ft=man' - "

# source ~/.zsh/plugins/iterm2.zsh
source ~/.zsh/plugins/autosuggestions.zsh
source ~/.zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source ~/.zsh/plugins/zaw/zaw.zsh

# startup time test snippet:
function zshSpeedTest() {
    for i in $(seq 1 10); do /usr/bin/time zsh -i -c exit; done
}
autoload -z edit-command-line
zle -N edit-command-line
bindkey "^X^E" edit-command-line
bindkey "^X^A" zaw-applications

