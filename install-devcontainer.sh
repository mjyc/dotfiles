#!/bin/bash
if [[ "$OSTYPE" =~ ^linux ]]; then
	sudo apt install -y vim
fi
echo 'alias g="git"' >> .bashrc
echo 'alias v="vim"' >> .bashrc
