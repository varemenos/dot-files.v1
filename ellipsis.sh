#!/usr/bin/env bash

pkg.link() {
	fs.link_files common

	case $(os.platform) in
		osx)
			fs.link_files platform/osx
			;;
		linux)
			fs.link_files platform/linux
			;;
	esac
}

pkg.install() {
	if ! zplug check; then
		curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh| zsh
	fi
}
