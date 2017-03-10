#!/bin/bash

#Update, upgrade brew...
brew update
brew upgrade

# brew taps
brew tap caskroom/versions
brew tap caskroom/fonts
brew tap homebrew/games


#Install DevOps tools...
brew install git
brew install git-lfs
brew install terraform
brew install terragrunt
brew install packer
brew install awscli
brew install lastpass-cli
brew cask install virtualbox
brew cask install virtualbox-extension-pack
brew cask install vagrant
brew cask install vagrant-manager
brew cask install docker
brew cask install iterm2
brew cask install atom
brew cask install sourcetree
brew install python3
brew cask install pycharm-ce

#Nice to have...
brew cask install spotify
brew cask install lastpass
brew cask install google-chrome
brew cask install citrix-receiver
brew cask install dropbox
brew cask install google-drive
brew cask install microsoft-office
brew cask install the-unarchiver
#brew cask install whatsapp
#nice code font
brew cask install font-source-code-pro
#resize windows
brew cask install spectacle
#iso2usb creator
brew cask install etcher
#Communication tools...
brew cask install slack
brew cask install skype-for-business
brew cask install franz
brew cask install whatsapp
#Install Appstore Apps...
brew install mas
#Microsoft RDP
mas install 715768417
#Lightshot
mas install 526298438
#keynote, Pages, Numbers
mas install 409183694
mas install 409201541
mas install 409203825


#Not brew but we need to add Atom plug-ins...
apm install language-terraform
apm install language-docker
apm install script
apm install platformio-ide-terminal

#Python linter in Atom
apm install linter
pip3 install flake8
pip3 install flake8-docstrings
apm install linter-flake8

#End, clean up...
brew cleanup
