#!/usr/bin/env bash

# TODO: create common and platform specific collections
platform_common=(
	zsh
	bat
	fzf
	wget
	curl
	rsync
	tree
	stow
)

if [[ $CURRENT_OS == 'Linux' ]]; then
	linux_common=(
		# cli/libs
		openssh
		openvpn
		command-not-found
		ctags
		parted
		ruby-build
		sudo
		unzip
		#apps
		# TODO!
	)
	ubuntu_specific=(
		# cli/libs
		# TODO!
		# apps
		# TODO!
	)
	arch_specific=(
		# cli/libs
		lm_sensors
		unrar
		# apps
		guake
		mysql-workbench
		google-chrome
		firefox
		dropbox
		gitg
		filebot
		filezilla
		gimp
		inkscape
		gparted
		qbittorrent
		robomongo-git
		simplescreenrecorder
		teamviewer
		smplayer
		spotify
		virtualbox
		vlc
		# gnome
		# TODO!
		# gdm
		# #gnome configuration
		# gnome-tweak-tool
		# dconf
		# dconf-editor
		# gconf
		# gconf-editor
		# gksu
		# file-roller
		# # icons
		# numix-circle-icon-theme-git
		# # network tools
		# dnsutils
		# modemmanager
		# inetutils
		# wireless_tools
		# traceroute
		# netctl
		# net-tools
		# networkmanager-openvpn
		# networkmanager-pptp
		# usb_modeswitch
		# whois
		# wpa_actiond
		# network-manager-applet
		# # android
		# android-sdk-platform-tools
		# android-udev
		# # other
		# gst-libav
		# gst-plugins-bad
		# gst-plugins-base
		# gst-plugins-good
		# gst-plugins-ugly
		# gstreamer0.10-plugins
		# gstreamer-vaapi
		# gvfs-mtp
		# libgnomeui
		# libwnck3
	)

	if [[ $CURRENT_DISTRO == 'ARCHLINUX' ]]; then
		packer -S ${platform_common[@]}
		packer -S ${linux_common[@]}
		packer -S ${linux_common[@arch_specific]}
	else
		sudo apt-get install -y ${platform_common[@]}
		sudo apt-get install -y ${linux_common[@]}
		sudo apt-get install -y ${ubuntu_specific[@]}
else
	macos_specific=(
		ack
		adns
		aircrack-ng
		autoconf
		autoenv
		binutils
		binwalk
		cifer
		consul
		coreutils
		dex2jar
		dns2tcp
		docker
		docker-compose
		docker-machine
		docker-swarm
		dos2unix
		elasticsearch
		emacs
		fcrackzip
		ffmpeg
		findutils
		foremost
		freetype
		gcc
		gdbm
		gettext
		git
		git-flow
		git-lfs
		gmp
		gnu-sed
		gnupg
		gnutls
		go
		grep
		hashpump
		hh
		htop
		hub
		hydra
		imagemagick
		isl
		jasper
		john
		jpeg
		kibana
		knock
		lame
		libassuan
		libdnet
		libevent
		libffi
		libgcrypt
		libgpg-error
		libidn2
		libksba
		libmpc
		libpng
		libtasn1
		libtiff
		libtool
		libunistring
		libusb
		libyaml
		lua
		lynx
		mas
		maven
		mongodb
		moreutils
		mpfr
		mysql
		nano
		netpbm
		nettle
		nmap
		npth
		ntfs-3g
		nvm
		openssl
		p11-kit
		p7zip
		pcre
		perl
		pigz
		pinentry
		pkg-config
		pngcheck
		pv
		python
		python3
		rbenv
		readline
		redis
		rename
		rlwrap
		ruby
		ruby-build
		screen
		sfnt2woff
		sfnt2woff-zopfli
		socat
		sqlite
		sqlmap
		ssdeep
		tcpflow
		tcpreplay
		tcptrace
		tmux
		unrar
		vbindiff
		vim
		woff2
		x264
		xvid
		xz
		zopfli
	)

	cask_specific=(
		1password
		atom
		backblaze
		cloudapp
		dash
		docker
		firefox
		font-fira-code
		franz
		gimp
		google-chrome
		google-drive-file-stream
		inkscape
		iterm2
		java
		java8
		kap
		mongodb-compass
		nvidia-geforce-now
		onyx
		osxfuse
		scroll-reverser
		skype
		sourcetree
		spectacle
		spotify
		steam
		sublime-text
		videostream
		virtualbox
		visual-studio-code
		vlc
		xquartz
	)

	brew install ${platform_common[@]}
	brew install ${macos_specific[@]}
	brew cask install ${cask_specific[@]}
fi
