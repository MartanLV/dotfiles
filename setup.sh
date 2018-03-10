# the dir you cloned repo in
DOTREPO=$HOME/DOTFILES

for f in $DOTREPO/dotfiles/.*; do
    ln -s $f $HOME
done

# https://github.com/Homebrew/homebrew-bundle
brew bundle

