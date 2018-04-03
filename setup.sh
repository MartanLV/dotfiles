# the dir you cloned repo in
DOTREPO=$HOME/DOTFILES

# function confirm() {
#         read -p "$1" -n 1 -r
#         echo
#         if [[ $REPLY =~ ^[Yy]$ ]]
#         then
#                 return 1
#         fi
# }

ln -s $DOTREPO/dotfiles/.git-init-template $HOME/.git-init-template
ln -s $DOTREPO/dotfiles/.gitconfig $HOME/.gitconfig
ln -s $DOTREPO/dotfiles/.gitignore-global $HOME/.gitignore-global
ln -s $DOTREPO/dotfiles/.hammerspoon $HOME/.hammerspoon
ln -s $DOTREPO/dotfiles/.zsh $HOME/.zsh
ln -s $DOTREPO/dotfiles/.zshenv $HOME/.zshenv

mkdir -p $HOME/.config
ln -s $DOTREPO/dotfiles/nvim $HOME/.config

#
# GIT
#
# The diff so fancy
# confirm "install diff-so-fancy?" && wget "https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy" -O /usr/local/bin/diff-so-fancy chmod +x /usr/local/bin/diff-so-fancy

# https://github.com/Homebrew/homebrew-bundle
# confirm "brew bundle?" && brew bundle

