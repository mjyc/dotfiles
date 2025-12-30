#!/bin/sh

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until this script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install!
export DEBIAN_FRONTEND=noninteractive
sudo apt update
sudo apt install -y --no-install-recommends openssh-server net-tools curl git vim trash-cli tmux xclip icdiff fzf ripgrep

# Install z https://github.com/rupa/z
if [ ! -d ~/.local/src/ ]; then mkdir -p ~/.local/src/; fi;
cd ~/.local/src/
git clone https://github.com/rupa/z.git
chmod +x ~/.local/src/z/z.sh
