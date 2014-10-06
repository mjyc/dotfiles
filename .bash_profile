# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.{bash_prompt,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

# init z   https://github.com/rupa/z
# . ~/.bash/bin/z.sh
source ~/.bash/bin/z/z.sh

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/local/bin/lesspipe.sh ] && eval "$(SHELL=/bin/sh lesspipe.sh)"

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

# TODO(mjyc): what do I do with OSX specific command?
# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults


# source ~/.bash/rc/my_ip_en0.sh
# source ~/.bashrc.osx

# eval "$(grunt --completion=bash)"

# alias hri2015="code; cd 2014/hri2015infobot"

# #=== Experimental ====#
# # source /usr/local/bin/virtualenvwrapper.sh
# export PATH="$HOME/local/bin/bin_bash:$HOME/local/bin:/usr/local/bin:$PATH"
# export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig/:/opt/X11/lib/pkgconfig:$PKG_CONFIG_PATH"
# # for ipdb
# export PYTHONPATH="$HOME/local/lib/python2.7/site-packages/:$PYTHONPATH"
# # source ~/ros/ros_catkin_ws_local/devel/setup.bash
# source ~/.functions
# source ~/.bash/bin/z/z.sh
