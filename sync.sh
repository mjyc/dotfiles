#!/bin/bash
cd "$(dirname "$0")"
git pull
function doIt() {
	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "sync.sh" --exclude "README.md" --exclude "install-deps.sh" --exclude "brew.sh"  --exclude "brew-cask.sh" -av . ~
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt
	fi
fi
unset doIt
source ~/.bash_profile
printf '\nIMPORTANT! Update c-h/j/k/l\ in ~/.vim/bundle/vim-tmux-navigator/plugin/tmux_navigator.vim to <Esc>h/j/k/l/\'
