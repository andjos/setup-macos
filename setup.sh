#!/bin/bash

sudo -v

#Install brew command...
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#Install applications etc...
source brew.sh

#Install zsh shell
brew install zsh zsh-completions zsh-syntax-highlighting
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# Switch to using brew-installed zsh as default shell
chsh -s $(which zsh)

# Symlink dot-files
for file in .*; do
	[ -r "$file" ] && [ -f "$file" ] && ln -fs "$(pwd {BASH_SOURCE[0]})/$file" ~/$file;
done

#Post config of git
echo "GIT name:"
read gitname
echo "GIT email:"
read gitemail
git config --global user.name $gitname
git config --global user.email $gitemail
git config --global credential.helper osxkeychain
git config --global core.excludesfile ~/.gitignore_global

#Config OS...
source os.sh

echo "Done....."
