#!/usr/bin/env bash

pkg.link() {
	stow common -t ~
	
	cd ./platform
	case $(os.platform) in
		osx)
			stow osx -t ~
			;;
		linux)
			stow linux -t ~
			;;
	esac
	popd
}

pkg.install() {
	# install zplug if it's not already installed
	if [ ! -e "$HOME/.zplug/autoload/zplug" ]; then
		curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh| zsh
	fi
}
