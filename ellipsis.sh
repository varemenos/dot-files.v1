#!/usr/bin/env bash

pkg.link() {
	 stow common -t ~

	case $(os.platform) in
		osx)
			stow platform/osx -t ~
			;;
		linux)
			stow platform/linux -t ~
			;;
	esac
}

pkg.install() {
	# install zplug if it's not already installed
	if [ ! -e "$HOME/.zplug/autoload/zplug" ]; then
		curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh| zsh
	fi
	
	// fix an oh-my-zsh loading issue with file permission issues
	compaudit | xargs chmod g-w,o-w
}
