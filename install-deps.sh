# # homebrew
# if [[ "$OSTYPE" =~ ^darwin ]]; then
  # /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#fi


# directory jumper https://github.com/rupa/z
if [ ! -d ~/local/src ]; then mkdir -p ~/local/src; fi;
cd ~/local/src
git clone https://github.com/rupa/z.git
chmod +x ~/local/src/z/z.sh
# also consider moving over your current .z file if possible. it's painful to rebuild :)


# # for the c alias (syntax highlighted cat)
# if [[ "$OSTYPE" =~ ^darwin ]]; then
#   sudo easy_install Pygments
# else
#   sudo apt-get install python-pygments
# fi
