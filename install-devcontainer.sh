#!/bin/bash

# Install dev tools
if [[ "$OSTYPE" =~ ^linux ]]; then
	export DEBIAN_FRONTEND=noninteractive
	sudo apt update && sudo apt install -y --no-install-recommends vim icdiff entr
fi

# Sync dotfiles
for file in .exports .inputrc .vimrc .tmux.conf;
	do cp "$file" ~/
done
for folders in .vim .tmux;
	do cp -r "$folders" ~/
done

# Add aliases
# my favorites
echo 'alias g="git"' >> ~/.bashrc
echo 'alias v="vim"' >> ~/.bashrc

# ls aliases
echo 'alias ls="ls --color=auto"' >> ~/.bashrc
echo 'alias l="ls -F1"' >> ~/.bashrc
echo 'alias la="ls -F1a"' >> ~/.bashrc
echo 'alias ll="ls -l"' >> ~/.bashrc
echo 'alias lla="ll -a"' >> ~/.bashrc
echo 'alias llt="ll -t"' >> ~/.bashrc
# git aliases
echo 'alias gst="g st"' >> ~/.bashrc
echo 'alias gbr="g br"' >> ~/.bashrc
echo 'alias gd="g d"' >> ~/.bashrc
echo 'alias gdf="g df"' >> ~/.bashrc
echo 'alias gl="g l"' >> ~/.bashrc
echo 'alias glg="g lg"' >> ~/.bashrc
echo 'alias gau="g add -u"' >> ~/.bashrc
echo 'alias ga.="g add ."' >> ~/.bashrc
echo 'alias gcim="g ci -m"' >> ~/.bashrc
echo 'alias gcia="g ci --amend"' >> ~/.bashrc
echo 'alias gciaa="g ci -a --amend"' >> ~/.bashrc

# Create .gitignore
cat << EOF >> ~/.gitignore
.DS_Store
Desktop.ini
EOF
