#!/bin/bash

SCRIPT_DIR=$(dirname "$(realpath "$0")")

# Install dev tools
if [[ "$OSTYPE" =~ ^linux ]]; then
	export DEBIAN_FRONTEND=noninteractive
	sudo apt update && sudo apt install -y --no-install-recommends vim icdiff entr ripgrep fd-find
fi

# Sync dotfiles
for file in .exports .gitignore .inputrc .vimrc .tmux.conf;
	do cp "${SCRIPT_DIR}/$file" ~/
done
unset file
cp "${SCRIPT_DIR}/.aliases-devcontainer" ~/.aliases
for folder in .vim .tmux;
	do cp -r "${SCRIPT_DIR}/$folder" ~/
done
unset folder

echo 'for file in ~/.{extra,exports,aliases}; do [ -r "$file" ] && source "$file"; done; unset file' >> ~/.bashrc

source ~/.bashrc
