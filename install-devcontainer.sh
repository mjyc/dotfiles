#!/bin/bash
set -euox pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "$(realpath -- "$0")")" && pwd)"

# Install dev tools
./apt.sh

# Sync dotfiles
for file in .aliases .gitconfig .bash_profile .bash_prompt .exports .inputrc .vimrc .tmux.conf; do
  cp -f "${SCRIPT_DIR}/${file}" ~/
done
unset file

for folder in .vim; do
  rm -rf ~/"${folder}"
  cp -a "${SCRIPT_DIR}/${folder}" ~/
done
unset folder

# Create .bashrc (backup existing if present)
if [ -f ~/.bashrc ]; then
  cp ~/.bashrc ~/.bashrc.backup
fi

cp -f .bashrc ~/
