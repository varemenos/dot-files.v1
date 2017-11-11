#!/usr/bin/env bash

if ! type "nvm" > /dev/null; then
	echo "Installing nvm"

	git clone https://github.com/creationix/nvm.git ~/.nvm
	cd ~/.nvm
	git checkout `git describe --abbrev=0 --tags`
	. ~/.nvm/nvm.sh
else
	printf "nvm $(nvm current) is already installed, upgrading."
	(
	cd "$NVM_DIR"
	git fetch origin
	git checkout .
	git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" origin`
) && . "$NVM_DIR/nvm.sh"
fi

nvm install 'lts/*'
nvm install stable

nvm alias current 'lts/*'
nvm alias default current

nvm use default
