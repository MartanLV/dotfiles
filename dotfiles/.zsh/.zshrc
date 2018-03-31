# vim: set fdm=marker fmr={{{,}}} fdl=0 :
#
# setopt XTRACE VERBOSE # uncomment to debug
### NOTES
# * to get key combination sends for your terminal use: sed -n
# * tab key terminal keybinding is ^I
#__

function fapreview() {
        echo $1
        echo $2
        return "3asd2"
}
# [f]uzzy [a]rtisan function
fa() {
        local acmds=$(php artisan list --raw | fzf --preview='{}')
        if [[ $acmds ]]; then
                echo $acmds + "3333"
        fi
}

# TODO {{{
# https://github.com/zsh-users/zaw
# }}}

setopt share_history
alias vim='nvim'

# zsh-ccomp zsh-ccomp-install zsh-wcomp zsh-wcomp-install # are for word&tab completions
eval "$(fasd --init env zsh-hook posix-alias zsh-ccomp zsh-ccomp-install zsh-wcomp zsh-wcomp-install)" 
unalias a
# open in vim
alias v='f -e vim'

# source all the things {{{
source ~/.zsh/conf/aliases.zsh 
source ~/.zsh/conf/colors.zsh
source ~/.zsh/conf/common.zsh
source ~/.zsh/conf/helpers.zsh
source ~/.zsh/conf/hooks.zsh
source ~/.zsh/conf/keybindings.zsh
source ~/.zsh/conf/prompts.zsh
# }}}

# man zshzle # all man pages via vim
export MANPAGER="col -b | vim -MR -c 'set ft=man' - "

# source ~/.zsh/plugins/iterm2.zsh
source ~/.zsh/plugins/autosuggestions.zsh
source ~/.zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# startup time test snippet:
function zshSpeedTest() {
	for i in $(seq 1 10); do /usr/bin/time zsh -i -c exit; done
}
