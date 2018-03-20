# the dir you cloned repo in
DOTREPO=$HOME/DOTFILES

# tmp
for f in $DOTREPO/dotfiles/.*; do
    ln -s $f $HOME
done
mkdir -p $HOME/.config

ln -s $DOTREPO/dotfiles/nvim $HOME/.config

#
# GIT
#
# The diff so fancy
# wget "https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy" -O /usr/local/bin/diff-so-fancy chmod +x /usr/local/bin/diff-so-fancy

# https://github.com/Homebrew/homebrew-bundle
brew bundle

