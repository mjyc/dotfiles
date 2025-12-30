#!/bin/sh

# Make sure we're using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install!
brew install z
brew install tmux
brew install trash-cli
brew install icdiff
brew install fzf
brew install ripgrep
brew install fd

# Remove outdated versions from the cellar
brew cleanup
