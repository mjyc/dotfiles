#!/bin/bash
# http://www.topbug.net/blog/2013/04/14/install-and-use-gnu-command-line-tools-in-mac-os-x/

# Make sure we're using the latest Homebrew
brew update

# Upgrade any already-installed formulae
# brew upgrade

# Install GNU core utilities
# - don't forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`
brew install coreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install findutils
# Install GNU `sed` to overwrite the built-in `sed`
brew install gnu-sed
# Install more GNU
brew install grep utilities
brew install gnu-tar
brew install gzip
# Install some other useful utilities like `sponge`
brew install moreutils
# Install wget with IRI support
brew install wget
# Install more utilities
brew install watch
brew install rename
brew install tree
# Install Bash 5
# - don't forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`
brew install bash
brew install bash-completion

# Install dev tools
brew install vim
# brew install macvim # conflicts with vim
brew install git
brew install hub
brew install imagemagick
# brew install node # use nvm instead
brew install pv
brew install trash
brew install reattach-to-user-namespace # must be run before tmux
brew install tmux
brew install ssh-copy-id
brew install ffmpeg
brew install icdiff
brew install poppler

# Remove outdated versions from the cellar
brew cleanup
