# the dir you cloned repo in
DOTREPO=$HOME/DOTFILES

for f in $DOTREPO/dotfiles/.*; do
    ln -s $f $HOME
done

# wget "https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy" -O /usr/local/bin/diff-so-fancy chmod +x /usr/local/bin/diff-so-fancy

# https://github.com/Homebrew/homebrew-bundle
brew bundle

