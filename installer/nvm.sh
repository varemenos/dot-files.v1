#!/usr/bin/env bash

if test ! $(which nvm); then
	echo "Installing nvm"

	git clone https://github.com/creationix/nvm.git ~/.nvm
	cd ~/.nvm
	git checkout `git describe --abbrev=0 --tags`
	. ~/.nvm/nvm.sh
else
	printf "nvm $(nvm current) is already installed."
fi

nvm install v0.10.26
nvm install v0.10.34
nvm install v0.12
nvm install lts
nvm install stable

nvm alias current lts
nvm alias default current

nvm use default
