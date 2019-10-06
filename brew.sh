#!/bin/bash
# http://www.topbug.net/blog/2013/04/14/install-and-use-gnu-command-line-tools-in-mac-os-x/

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
# brew upgrade

# Install GNU core utilities
# NOET: Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
# Install some other useful utilities like `sponge`
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install findutils
# Install GNU `sed` to overwrite the built-in `sed`
brew install gnu-sed --default-names
# Install wget with IRI support
brew install wget --enable-iri
# Install more linux programs...
brew install gnu-tar --with-default-names
brew install gzip
brew install watch
# Install Bash 5
# NOTE: Don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
brew install bash
brew install bash-completion

# Install dev tools
brew install vim --override-system-vi
brew install macvim --override-system-vim --custom-system-icons
brew install homebrew/dupes/grep
brew install homebrew/dupes/screen

# Install the rest
brew install git
brew install hub
brew install imagemagick --with-webp
# brew install node # use nvm instead
brew install pv
brew install rename
brew install tree
brew install trash
brew install reattach-to-user-namespace # must before tmux
brew install tmux
brew install ssh-copy-id
brew install ffmpeg --with-libvpx
brew install icdiff
brew install poppler

# Remove outdated versions from the cellar
brew cleanup
