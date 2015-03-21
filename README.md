# Mike's dotfiles

This repo is my attempt to upgrade my previous [setup files repo](https://github.com/mjyc/ubuntu-setups) to [dotfiles](http://dotfiles.github.io/) styled repo. Most files in this repo are shamelessly copied from [Paul's dotfiles](https://github.com/paulirish/dotfiles).

## install the necessary apps

My basic setup is captured in `install-deps.sh` which adds homebrew, z, etc.

## private config

Toss it into a file called `.extra` which you do not commit to this repo and just keep in your `~/`

### Ubuntu settings

`.ubuntu` is a script that sets up freshly installed Ubuntu 14.04. There are some notes about how to manually instal more programs. You can simply run:

```bash
./.ubuntu
```


## overview of files

####  Automatic config
* `.vimrc`, `.vim` - vim config

#### shell environment
* `.aliases`
* `.bash_profile`
* `.bash_prompt`
* `.bashrc`
* `.exports`
* `.functions`
* `.extra` - not included, explained above

#### manual run
* `install-deps.sh` - random apps i need installed
* `.brew` - run on a fresh osx machine
* `.brew-cask` - run on a fresh osx machine, installs apps
* `.ubuntu` - run on a fresh ubuntu machine

#### git
* `.git`
* `.gitattributes`
* `.gitconfig`
* `.gitignore`

#### other
* `Rosfile` - example Ros setup, do something similar in `.extra`
* `BitbucketSsh` - example bitbucket shs setup, do something similar in `.extra`

## Installation

```bash
git clone https://github.com/mjyc/dotfiles.git && cd dotfiles && ./sync.sh
```

To update later on, just run the sync again.
