# Mike's dotfiles

This repo is my attempt to upgrade my previous [setup files repo](https://github.com/mjyc/ubuntu-setups) to [dotfiles](http://dotfiles.github.io/) styled repo. Most files in this repo are shamelessly copied from [Paul's dotfiles](https://github.com/paulirish/dotfiles).

## install the necessary apps

My basic setup is captured in `install-deps.sh` which adds homebrew, z, etc.

## private config

Toss it into a file called `.extra` which you do not commit to this repo and just keep in your `~/`

### Sensible OS X defaults

When setting up a new Mac, you may want to set some sensible OS X defaults:

```bash
./.osx
```

### Ubuntu defaults

My personal notes about setting up freshly installed Ubuntu are at `.ubuntu`. You can also do:

```bash
./.ubuntu
```



## overview of files

####  Automatic config
* `.vimrc`, `.vim` - vim config, obv.

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
* `.osx` - run on a fresh osx machine
* `.ubuntu` - run on a fresh ubuntu machine
* `.brew` - homebrew initialization

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
