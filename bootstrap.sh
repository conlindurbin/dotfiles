#!/bin/bash


# Install that beautiful ZSH
curl -L http://install.ohmyz.sh | sh


# Move .zshrc to home
rsync ./.zshrc ./.aliases ./.functions ./.gitconfig ~

source ~/.zshrc

if [[ -n $(which brew) ]]; then
    echo "Homebrew installed!"
elsee
    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
fi

brew bundle Brewfile

mkdir ~/.bin
install -g nave
cd ~/.bin
git clone https://github.com/rupa/z.git
chmod +x ~/.bin/z/z.sh

cd ~/.bin
git clone git://github.com/dronir/SpotifyControl.git

sudo easy_install Pygments

#ngrok!!
mkdir .tmp
curl -sS https://dl.ngrok.com/darwin_amd64/ngrok.zip > .tmp/ngrok.zip | unzip .tmp/ngrok.zip > ~/.bin/

