#!/bin/sh

# homebrew taps
brew tap caskroom/cask
brew tap caskroom/versions
brew tap caskroom/fonts
brew tap homebrew/php
brew tap homebrew/services

# Updated grep
# brew install grep

# Updated bash
brew install bash

# homebrew apps
# brew install git
# brew install git-extras
# brew install wget
# brew install composer
# brew install mysql
brew install yarn
brew install git-sh
brew install diff-so-fancy
brew install awscli
brew install bash
brew install coreutils
brew install diff-so-fancy
brew install docker
brew install fzf
brew install hashicorp/tap/terraform
# brew install jandedobbeleer/oh-my-posh/oh-my-posh
brew install kubernetes-cli
brew install stow
brew install yarn
brew install zoxide
brew install zsh
brew install zsh-completions

# Updated python/pip
# brew install python
# pip install --upgrade setuptools
# pip install --upgrade pip

# Rbenv
# brew install rbenv

# cask apps
# brew install alfred
# brew install appcleaner
# brew install vscode
brew install docker
# brew install dropbox
brew install firefox
# brew install google-chrome
# brew install imageoptim
# brew install iterm2
brew install postman
# brew install sequel-pro
# brew install sketch
# brew install skype
# brew install slack
# brew install rectangle
brew install spotify
# brew install transmission
# brew install mactex

# Install zsh and set as default
brew install zsh zsh-completions

pip chsh -s /usr/local/bin/zsh

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils

pip install mackup

sudo mdimport /Applications

# clean
brew cask cleanup

# verify
brew doctor
