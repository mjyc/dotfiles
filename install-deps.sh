# up to you (me) if you want to run this as a file or copy paste at your leisure
# do `bash install-deps.sh`


# homebrew!
# if [[ "$OSTYPE" =~ ^darwin ]]; then
  # /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#fi


# https://github.com/rupa/z
# z, oh how i love you
if [ ! -d ~/local/src ]; then mkdir -p ~/local/src; fi;
cd ~/local/src
git clone https://github.com/rupa/z.git
chmod +x ~/local/src/z/z.sh
# also consider moving over your current .z file if possible. it's painful to rebuild :)

# z binary is already referenced from .bash_profile


# for the c alias (syntax highlighted cat)
if [[ "$OSTYPE" =~ ^darwin ]]; then
  sudo easy_install Pygments
else
  sudo apt-get install python-pygments
fi
