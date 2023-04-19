#!/bin/bash
cd "$(dirname "$0")"
if [[ "$OSTYPE" =~ ^darwin ]]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ./brew.sh
  ./brew-cask.sh
fi
