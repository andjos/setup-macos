#!/bin/bash

#Install brew command...
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#Update, upgrade brew...
brew update
brew tap caskroom/versions
brew tap caskroom/fonts
brew upgrade

#Install DevOps tools...
brew install git
brew install git-lfs
brew install terraform
brew install terragrunt
brew install packer
brew install awscli
brew install lastpass-cli
brew cask install iterm2-beta
brew cask install virtualbox
brew cask install virtualbox-extension-pack
brew cask install vagrant
brew cask install vagrant-manager
brew cask install docker
brew cask install iterm2-beta
brew cask install atom

#Nice to have...
brew cask install spotify
brew cask install laspass
brew cask install google-chrome
brew cask install citrix-receiver
brew cask install dropbox
brew cask install google-drive
brew cask install microsoft-office
brew cask install the-unarchiver


#Communication tools...
brew cask install slack
brew cask install skype-for-business

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

#End, clean up...
brew cleanup
