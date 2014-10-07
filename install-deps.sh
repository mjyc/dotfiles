# up to you (me) if you want to run this as a file or copy paste at your leisure


# https://github.com/jamiew/git-friendly
# the `push` command which copies the github compare URL to my clipboard is heaven
if [[ "$OSTYPE" =~ ^darwin ]]; then
	bash < <( curl https://raw.github.com/jamiew/git-friendly/master/install.sh)
else
	sudo bash < <( curl https://raw.github.com/jamiew/git-friendly/master/install.sh)
fi

# homebrew!
if [[ "$OSTYPE" =~ ^darwin ]]; then
	ruby <(curl -fsSkL raw.github.com/mxcl/homebrew/go/install)
fi



# https://github.com/rupa/z
# z, oh how i love you
cd ~/code
git clone https://github.com/rupa/z.git
chmod +x ~/code/z/z.sh
# also consider moving over your current .z file if possible. it's painful to rebuild :)

# z binary is already referenced from .bash_profile



# my magic photobooth symlink -> dropbox. I love it.
# first move Photo Booth folder out of Pictures
# then start Photo Booth. It'll ask where to put the library.
# put it in Dropbox/public

# now you can record photobooth videos quickly and they upload to dropbox DURING RECORDING
# then you grab public URL and send off your video message in a heartbeat.


# for the c alias (syntax highlighted cat)
if [[ "$OSTYPE" =~ ^darwin ]]; then
	sudo easy_install Pygments
else
	sudo apt-get install python-pygments
fi


# chrome canary as default
# on a mac you can set chrome canary as your default inside of Safari preferences :)

