# vim: set fdm=marker fmr={{{,}}} fdl=0 :
#
# setopt XTRACE VERBOSE # uncomment to debug
### NOTES
# * to get key combination sends for your terminal use: sed -n
# * tab key terminal keybinding is ^I
#__

# [f]uzzy [kill] match and kill a process(es)
fkill() {
  local pid
  pid=$(ps -ef | sed 1d | fzf -m | awk '{print $2}')

  if [ "x$pid" != "x" ]
  then
    echo $pid | xargs kill -${1:-9}
  fi
}

# [f]uzzy [a]rtisan function
function fa() {
	# foce ansi as that program detect's we are not writing into TTY
        local _fapreview="php artisan help {1} --ansi"
	# painting some ansi by hand as the raw flag gives pure list
        local alist=$(a list --raw | sed -El "s/^([a-z,:,-]+)/$(tput setaf 2)\1$(tput sgr0)/")
	# left wrapped preview
        local acmds=$(echo -n $alist | fzf --ansi --preview=$_fapreview --preview-window left:wrap)
	# if not canceled	
        if [[ $acmds ]]; then
		# strip the command signature part
                local acmd=$(echo $acmds | sed 's/ .*//')
		# also print the help again
                php artisan help $acmd
		# writes it out for ya
                print -z "php artisan $acmd"
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
alias v='f -e nvim'

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
