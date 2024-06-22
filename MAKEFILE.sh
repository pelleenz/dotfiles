#!/bin/bash

# sudo MAKEFILE.sh /home/{user}

if [[ "$1" != "" ]]; then
  DIR="$1"
else
 DIR=.
fi

apt update
apt upgrade -y

apt install htop ripgrep fzf neofetch git gh zoxide curl unzip wget tldr -y

curl -s https://ohmyposh.dev/install.sh | bash -s

mkdir -p $DIR/.dotfiles/archive/

mv $DIR/.bashrc $DIR/.dotfiles/archive/.bashrc
ln -sf $DIR/.dotfiles/.bashrc $DIR

mv $DIR/.profile $DIR/.dotfiles/archive/.profile
ln -sf $DIR/.dotfiles/.profile $DIR

mkdir -p $DIR/.dotfiles/archive/neofetch
mv $DIR/.config/neofetch/config.conf $DIR/.dotfiles/archive/neofetch/config.conf
ln -sf $DIR/.dotfiles/neofetch/config.conf $DIR/.config/neofetch

mkdir -p $DIR/.dotfiles/archive/git
mv $DIR/.gitconfig $DIR/.dotfiles/archive/git/.gitconfig
ln -sf $DIR/.dotfiles/git/.gitconfig $DIR