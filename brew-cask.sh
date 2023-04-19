#!/bin/sh

# Personal
brew install --cask dropbox

# Browsers
brew install --cask google-chrome
brew install --cask firefox

# Dev tools
brew install --cask iterm2-beta
brew install --cask sublime-text
brew install --cask visual-studio-code

# Remove outdated versions from the cellar
brew cleanup
