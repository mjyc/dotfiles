#!/bin/sh

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until this script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

export DEBIAN_FRONTEND=noninteractive
sudo apt update

# Essentials
sudo apt install -y --no-install-recommends openssh-server net-tools curl git vim trash-cli tmux xclip icdiff
# TODO: scriptize "zoxide" installation

# Dev tools
sudo apt install -y --no-install-recommends fzf ripgrep fd-find exa
