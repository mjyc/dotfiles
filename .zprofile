# Load ~/.zextra, ~/.exports, ~/.aliases and ~/.functions
# ~/.zextra can be used for settings you don’t want to commit
for file in ~/.{zextra,aliases}; do
	[ -r "$file" ] && source "$file"
done
unset file

# append to the history file, don't overwrite it
setopt APPEND_HISTORY

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

