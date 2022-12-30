#!/bin/bash

# Make sure we're using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install dev tools
# http://www.topbug.net/blog/2013/04/14/install-and-use-gnu-command-line-tools-in-mac-os-x/
# brew install vim  # use system vim
# brew install git  # use system git
brew install z
brew install tmux
brew install trash-cli
brew install icdiff
brew install ssh-copy-id
brew install fzf
brew install rigrep
brew install fd
brew install exa

# Remove outdated versions from the cellar
brew cleanup
