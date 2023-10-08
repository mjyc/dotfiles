#!/bin/bash
if [[ "$OSTYPE" =~ ^darwin ]]; then
  # macOS
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ./brew.sh
else
  if [[ "$USER" == "codespace" || "$USER" == "vscode" ]]; then
    ./install-devcontainer.sh
  else
    ./apt.sh
  fi
fi
./sync.sh -f
