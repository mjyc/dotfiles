#!/bin/bash

SCRIPT_DIR=$(dirname "$(realpath "$0")")

if [[ "$USER" == "mjyc" ]]; then
  if [[ "$OSTYPE" =~ ^darwin ]]; then
    # macOS
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    "${SCRIPT_DIR}/brew.sh"
  else
  	# ubuntu
    "${SCRIPT_DIR}/apt.sh"
  fi  
  "${SCRIPT_DIR}/sync.sh" -f
else
  # codespace/devcontainer
  "${SCRIPT_DIR}/install-devcontainer.sh"
fi
