#!/usr/bin/env bash

if [[ $CURRENT_OS == 'Linux' ]]; then
	# install system sensors detectors
	packer -S lm_sensors hddtemp

	# initialize/configure sensor detectors
	sudo sensors-detect
else
	printf "Aborting, Archlinux specific"
fi
