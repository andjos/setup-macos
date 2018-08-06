#!/bin/bash

sudo -v

#Install brew command... if needed...
if ! [ -x "$(command -v brew)" ]; then
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

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

#Link Atom files
# ln -fs $("pwd")/atom/config.cson ~/.atom/config.cson
# ln -fs $("pwd")/atom/init.coffee ~/.atom/init.coffee
# ln -fs $("pwd")/atom/keymap.cson ~/.atom/keymap.cson
# ln -fs $("pwd")/atom/snippets.cson ~/.atom/snippets.cson
# ln -fs $("pwd")/atom/styles.less ~/.atom/styles.less

#Config OS...
#source os.sh

#Post config of git
echo "GIT name:"
read gitname
echo "GIT email:"
read gitemail
git config --global user.name $gitname
git config --global user.email $gitemail
git config --global credential.helper osxkeychain
git config --global core.excludesfile ~/.gitignore_global

echo "Done....."
