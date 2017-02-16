#!/usr/bin/env bash

if test ! $(which rbenv); then
	echo "Installing rbenv"

	# rbenv dependencies
	if [[ $CURRENT_OS == 'Linux' ]]; then
		packer -S ruby-build
	fi

	git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
	. ~/.rbenv/bin/rbenv
else
	printf "rbenv $(rbenv global) is already installed."
fi

rbenv install 2.2.2
rbenv global 2.2.2
