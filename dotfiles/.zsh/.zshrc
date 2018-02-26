# setopt XTRACE VERBOSE # uncomment to debug
### NOTES
# * to get key combination sends for your terminal use: sed -n l 
# * tab key terminal keybinding is ^I
#__

source $ZPLUG_HOME/init.zsh

zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zaw"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "twang817/zsh-fasd"

if ! zplug check; then
    zplug install
fi

zplug load

for zsh_source in $HOME/.zsh/conf/*.zsh; do
  source $zsh_source
done


export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
