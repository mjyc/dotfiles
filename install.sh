#!/bin/bash
if [[ "$OSTYPE" =~ ^darwin ]]; then
  # macOS
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ./brew.sh
else
  ./apt.sh
fi
./sync.sh
