#!/bin/bash

#Set PATHs
#echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile

#Add color to bash
#echo 'export CLICOLOR=1' >> ~/.bash_profile

#Install applications etc...
#./brew.sh


#GIT config...
#git config --global user.name "Your Name Here"
#git config --global user.email "your_email@youremail.com"
#git config --global credential.helper osxkeychain


# Symlink dot-files
for file in .*; do
	[ -r "$file" ] && [ -f "$file" ] && ln -fs "$(pwd {BASH_SOURCE[0]})/$file" ~/$file;
done

# sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
## CTRL arrow naviation
#bindkey '^[[1;5D' backward-word
#bindkey '^[[1;5C' forward-word
#
