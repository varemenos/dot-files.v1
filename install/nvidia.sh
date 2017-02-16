#!/usr/bin/env bash

packages=(
	nvidia
	nvidia-libgl
	opencl-nvidia
	lib32-nvidia-libgl
)

sudo pacman -S ${packages[@]}
