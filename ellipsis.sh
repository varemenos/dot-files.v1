#!/usr/bin/env bash

pkg.link() {
	fs.link_rfiles common

	case $(os.platform) in
		osx)
			fs.link_rfiles platform/osx
			;;
		linux)
			fs.link_rfiles platform/linux
			;;
	esac
}

pkg.install() {
	# install zplug if it's not already installed
	if [ ! -e "$HOME/.zplug/autoload/zplug" ]; then
		curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh| zsh
	fi
}
