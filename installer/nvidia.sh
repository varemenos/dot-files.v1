#!/usr/bin/env bash

packages=(
	nvidia
	nvidia-utils
	lib32-nvidia-utils
	opencl-nvidia
)

if [[ $CURRENT_OS == 'Linux' ]]; then
	sudo pacman -S ${packages[@]}
else
	printf "Aborting, Archlinux specific"
fi
