#!/usr/bin/env bash

if [[ $CURRENT_OS == 'Linux' ]]; then
	if test ! $(which packer); then
		echo "Installing packer"

		# packer dependencies
		sudo pacman -S git wget fakeroot jshon expac base-devel

		pushd
		cd /tmp
		mkdir packer
		cd packer
		wget https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=packer -O PKGBUILD
		makepkg
		sudo pacman -U $(ls | grep packer-)
		popd
		rm -rf /tmp/packer
	else
		printf "packer is already installed."
	fi
else
	printf "Aborting, Archlinux specific"
fi
