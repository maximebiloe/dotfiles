# Maxime's dotfiles

## Installation

### Using Git and the bootstrap script

Clone this repository in `~/Projects`. The bootstrapper script will pull in the latest version and symlink the files to your home folder.

```bash
git clone https://github.com/maximebiloe/dotfiles.git && cd dotfiles && bash symlink-dotfiles.sh
```


### Add custom commands without creating a new fork

If `~/.extra` exists, it will be sourced along with the other files. You can use this to add a few custom commands without the need to fork this entire repository, or to add commands you don’t want to commit to a public repository.


### Install Homebrew formulas

Install [Homebrew](http://brew.sh/)

```bash
./etc/brew.sh
./etc/cask.sh
```

## Thanks to…

* [@julienbourdeau](https://github.com/julienbourdeau/dotfiles/)
