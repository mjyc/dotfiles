# Mike's dotfiles

This repo is my attempt to upgrade my previous [setup files repo](https://github.com/mjyc/ubuntu-setups) to [dotfiles](http://dotfiles.github.io/) styled repo. Most files in this repo are shamelessly copied from [Paul's dotfiles](https://github.com/paulirish/dotfiles).

## install the necessary apps

My basic setup is captured in `install-deps.sh` which adds homebrew, z, etc.



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

## Installation

```bash
git clone https://github.com/mjyc/dotfiles.git && cd dotfiles && ./sync.sh
```

To update later on, just run the sync again.
