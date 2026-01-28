#!/bin/bash
cd "$(dirname "$0")"
git pull

rsync_dotfiles() {
	rsync --exclude ".git/" \
	      --exclude ".DS_Store" \
	      --exclude "README.md" \
	      --exclude "*.sh" \
	      --exclude "*-devcontainer*" \
	      --exclude ".gitmodules" \
	      -av . ~
}

if [[ "$1" == "-f" || "$1" == "--force" ]]; then
	rsync_dotfiles
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	[[ $REPLY =~ ^[Yy]$ ]] && rsync_dotfiles
fi

source ~/.bash_profile
