#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "$(realpath -- "$0")")" && pwd)"

# Install dev tools
export DEBIAN_FRONTEND=noninteractive
sudo apt update
sudo apt install -y --no-install-recommends vim icdiff entr ripgrep fd-find

# Optional: make `fd` available as `fd` (Ubuntu/Debian package uses `fdfind`)
if command -v fdfind >/dev/null 2>&1 && ! command -v fd >/dev/null 2>&1; then
  sudo ln -sf "$(command -v fdfind)" /usr/local/bin/fd
fi

# Sync dotfiles
for file in .exports .inputrc .vimrc .tmux.conf; do
  cp -f "${SCRIPT_DIR}/${file}" ~/
done
unset file

cp -f "${SCRIPT_DIR}/.aliases-devcontainer" ~/.aliases
cp -f "${SCRIPT_DIR}/.gitconfig-devcontainer" ~/.gitconfig

for folder in .vim .tmux; do
  rm -rf ~/"${folder}"
  cp -a "${SCRIPT_DIR}/${folder}" ~/
done
unset folder

# Create .bashrc (backup existing if present)
if [ -f ~/.bashrc ]; then
  cp ~/.bashrc ~/.bashrc.backup
fi

cat > ~/.bashrc << 'EOF'
[ -n "$PS1" ] && source ~/.bash_profile
EOF
