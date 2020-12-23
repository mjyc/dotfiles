# IMPORTANT! doesn't work for Apple Silicon (M1) machines; see https://github.com/Homebrew/discussions/discussions/153#discussioncomment-132135
# homebrew
# if [[ "$OSTYPE" =~ ^darwin ]]; then
#   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# fi


# directory jumper https://github.com/rupa/z
if [ ! -d ~/local/src ]; then mkdir -p ~/local/src; fi;
cd ~/local/src
git clone https://github.com/rupa/z.git
chmod +x ~/local/src/z/z.sh
# also consider moving over your current .z file if possible. it's painful to rebuild :)


# # git-issue
# git clone  https://github.com/dspinellis/git-issue.git
# # add the following in
# # export GIT_ISSUE_LIB_PATH="$HOME/local/src/git-issue/lib"
# # export GL_CURL_AUTH="PRIVATE-TOKEN: {gitlab token}"
# # export GH_CURL_AUTH="Authorization: token  {github token}"
# # export PAGER="cat"
# # source $HOME/local/src/git-issue/gi-completion.sh
