#!/usr/bin/env bash

#Install brew command
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#Update, upgrade brew
brew update
brew tap caskroom/versions
brew tap caskroom/fonts
brew upgrade

#Install some tools....
brew install git
brew install git-lfs
brew install terraform
brew install terragrunt
brew install packer
brew install awscli
brew cask install iterm2-beta
brew cask install virtualbox
brew cask install vagrant
brew cask install slack
brew cask install iterm2-beta
brew cask install google-chrome
brew cask install atom
brew cask install spotify
brew cask install skype-for-business



#Not brew but we need to add Atom plug-ins...
apm install language-terraform
apm install language-docker

#End, clean up...
brew cleanup
