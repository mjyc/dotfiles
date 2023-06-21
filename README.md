# Mike's dotfiles

Most files are originally from [Paul's dotfiles](https://github.com/paulirish/dotfiles).
But, I'm quite proud of my [ROS](http://www.ros.org/about-ros/)-[prompt](https://github.com/mjyc/dotfiles/blob/master/.bash_prompt#L64-L77) :D

## Installation

```bash
git clone --recurse-submodules https://github.com/mjyc/dotfiles.git ~/dotfiles && cd ~/dotfiles && ./install.sh
```

## Private config

Toss it into a file called `.extra` which you do not commit to this repo and just keep in your `~/`

## Overview of files

#### Automatic config
* `.inputrc` - readline config
* `.screenrc` - screen config
* `.tmux.conf`, `.tmux` - tmux config
* `.vimrc`, `.vim` - vim config

#### Shell environment
* `.aliases`
* `.bash_profile`
* `.bash_prompt`
* `.bashrc`
* `.exports`
* `.extra` - not included, explained above
* `.zprofile`
* `.zshrc`

#### Manual run
* `.brew` - run on a fresh osx machine
* `.brew-cask` - run on a fresh osx machine, installs apps
* `.apt` - run on a fresh debian machine

#### Git
* `.git`
* `.gitconfig`
* `.gitignore`
