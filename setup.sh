#!/bin/bash

#Install applications etc...
./brew.sh

#Install zsh shell
brew install zsh
brew install zsh-completions
brew install zsh-syntax-highlighting
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
# Switch to using brew-installed zsh as default shell
if ! fgrep -q '/usr/local/bin/zsh' /etc/shells; then
  echo '/usr/local/bin/zsh' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/zsh;
fi;

# Symlink dot-files
for file in .*; do
	[ -r "$file" ] && [ -f "$file" ] && ln -fs "$(pwd {BASH_SOURCE[0]})/$file" ~/$file;
done



#GIT config...
#git config --global user.name "Your Name Here"
#git config --global user.email "your_email@youremail.com"
#git config --global credential.helper osxkeychain




# sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
## CTRL arrow naviation
#bindkey '^[[1;5D' backward-word
#bindkey '^[[1;5C' forward-word
#
