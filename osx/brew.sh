#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils

# Install GNU bin utils -> http://www.gnu.org/software/binutils/
brew install binutils

# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion2

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew tap homebrew/dupes
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Brew Apache
brew tap homebrew/apache
brew install httpd24 --with-privileged-ports --with-http2
sudo apachectl stop
sudo launchctl unload -w /System/Library/LaunchDaemons/org.apache.httpd.plist 2>/dev/null
sudo cp -v /usr/local/Cellar/httpd24/*/homebrew.mxcl.httpd24.plist /Library/LaunchDaemons
sudo chown -v root:wheel /Library/LaunchDaemons/homebrew.mxcl.httpd24.plist
sudo chmod -v 644 /Library/LaunchDaemons/homebrew.mxcl.httpd24.plist
sudo launchctl load /Library/LaunchDaemons/homebrew.mxcl.httpd24.plist

# Install PHP and PHP-related tools
brew tap homebrew/php
brew install php71 --with-httpd24 --with-gmp
brew install php71-mcrypt
brew install php71-xdebug
brew install php71-opcache
brew install php71-intl
brew install composer
brew install php-cs-fixer
brew install wp-cli

# Install database management systems
brew install mysql

# Install git tools
brew install git
brew install git-lfs
brew install hub
brew install bfg

# Install nodes
brew install node

# Install completion
brew tap homebrew/completions
brew install apm-bash-completion
brew install composer-completion
brew install boot2docker-completion
brew install brew-cask-completion
brew install bundler-completion
brew install vagrant-completion
brew install wpcli-completion

# Install image-related binaries
brew install exiv2
brew install imagemagick --with-webp
brew install lua
brew install webkit2png
brew install jpeg

# Install compression tools
brew install p7zip
brew install piaz
brew install zopfli
brew install xz

# Install other useful binaries.
brew install htop-osx
brew install nmap
brew install ack
brew install lynx
brew install pv
brew install rename
brew install speedtest_cli
brew install ssh-copy-id
brew install tree
brew install trash
brew install terminal-notifier
brew install gnupg2
brew install shellcheck

# Remove outdated versions from the cellar.
brew cleanup
