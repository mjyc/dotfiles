# Mike's dotfiles

Most files are originally from [Paul's dotfiles](https://github.com/paulirish/dotfiles).
But, I'm quite proud of my [ROS](http://www.ros.org/about-ros/)-[prompt](https://github.com/mjyc/dotfiles/blob/master/.bash_prompt#L64-L77) :D

## Installation

1. Run `install-deps.sh`
2. Install OS-specific installation scripts, e.g., `./brew.sh` or `./apt.sh`

## Private config

Toss it into a file called `.extra` which you do not commit to this repo and just keep in your `~/`

## Overview of files

#### Automatic config
* `.vimrc`, `.vim` - vim config

#### Shell environment
* `.aliases`
* `.bash_profile`
* `.bash_prompt`
* `.bashrc`
* `.exports`
* `.functions`
* `.extra` - not included, explained above

#### Manual run
* `install-deps.sh` - random apps i need installed
* `.brew` - run on a fresh osx machine
* `.brew-cask` - run on a fresh osx machine, installs apps
* `.apt` - run on a fresh debian machine

#### Git
* `.git`
* `.gitattributes`
* `.gitconfig`
* `.gitignore`

## Installation

```bash
git clone https://github.com/mjyc/dotfiles.git && cd dotfiles && ./sync.sh
```

To update later on, just run the sync again.
