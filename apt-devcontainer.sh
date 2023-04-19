#!/bin/sh

export DEBIAN_FRONTEND=noninteractive
sudo apt-get -y --no-show-upgraded update
sudo apt-get -y install --no-install-recommends --no-show-upgraded fzf ripgrep fd-find exa bat
