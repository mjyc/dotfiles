#!/bin/bash

if [[ "$OSTYPE" =~ ^linux ]]; then
	sudo apt install -y vim icdiff
fi

# Sync dotfiles
for file in ~/.exports ~/.inputrc ~/.vimrc;
	do cp "$file" ~/;
done
# Add aliases
for alias in 'alias g="git"' 'alias v="vim"';
	do echo "$alias" >> .bashrc
done

cat <<- EOF > ~/.gitignore
.DS_Store
Desktop.ini
EOF
