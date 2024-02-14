#!/bin/bash

SCRIPT_DIR=$(dirname "$(realpath "$0")")

# Install dev tools
if [[ "$OSTYPE" =~ ^linux ]]; then
	export DEBIAN_FRONTEND=noninteractive
	sudo apt update && sudo apt install -y --no-install-recommends vim icdiff entr ripgrep fd-find
fi

# Sync dotfiles
for file in .exports .aliases-devcontainer .inputrc .vimrc .tmux.conf;
	do cp "${SCRIPT_DIR}/$file" ~/
done
unset file
for folder in .vim .tmux;
	do cp -r "${SCRIPT_DIR}/$folder" ~/
done
unset folder

echo 'for file in ~/.{exports,aliases-devcontainer}; do
    [ -r "$file" ] && source "$file"
done
unset file' >> ~/.bashrc

# Create .gitignore
cat << EOF >> ~/.gitignore
.DS_Store
Desktop.ini
EOF
