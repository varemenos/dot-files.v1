#!/usr/bin/env bash

packages=(
	nvidia
	nvidia-libgl
	opencl-nvidia
	lib32-nvidia-libgl
)

if [[ $CURRENT_OS == 'Linux' ]]; then
	sudo pacman -S ${packages[@]}
else
	printf "Aborting, Archlinux specific"
fi
