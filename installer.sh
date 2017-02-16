#!/usr/bin/env bash

function dir() {
	for d in ./install/*; do
		echo '*' $d | sed 's/.\/install\///g' | sed 's/.sh//g'
	done
}

function choose() {
	local choice=""
	echo -e 'Available installation scripts: \n';
	dir;
	echo -e '\nType your choice: \n'
	read choice
	if ! command "./install/${choice}.sh" > /dev/null; then
		echo "command not found"
	fi
}

choose;

unset choose;
