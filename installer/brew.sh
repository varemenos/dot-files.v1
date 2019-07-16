#!/usr/bin/env bash

if [[ $CURRENT_OS == 'MAC OS' ]]; then
	if test ! $(which brew); then
		echo "Installing brew"

		/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

		# taps
		brew tap homebrew/core
		brew tap homebrew/services

		brew tap caskroom/cask
		brew tap caskroom/fonts
		brew tap caskroom/versions

		brew tap bramstein/webfonttools
	else
		printf "brew is already installed."
	fi
else
	printf "Aborting, MAC OS specific"
fi
