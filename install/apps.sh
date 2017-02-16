#!/usr/bin/env bash

apps=(
	# cli
	zsh
	wget
	curl
	rsync
	thefuck
	openssh
	command-not-found
	ctags
	crda
	dialog
	dosfstools
	f2fs-tools
	ntfs-3g
	mtools
	dmraid
	efibootmgr
	gptfdisk
	haveged
	hwdetect
	hwinfo
	libui-sh
	ntp
	os-prober
	parted
	prebootloader
	gummiboot
	curlftpfs
	hddtemp
	hdparm
	htop
	lm_sensors
	mongodb
	nginx
	nodejs
	ntfs-3g
	openssh
	openvpn
	ruby-build
	screenfetch
	sni-qt
	tmux
	tree
	sshfs
	wine
	alsa-utils
	sudo
	unzip
	unrar
	# apps
	guake
	sublime-text-nightly
	mysql-workbench
	google-chrome
	firefox
	spotify
	dropbox
	deja-dup
	gitg
	atom-editor
	electron
	filebot
	filezilla
	gimp
	inkscape
	gparted
	opera
	qbittorrent
	robomongo-git
	simplescreenrecorder
	teamviewer
	smplayer
	spotify
	virtualbox
	vlc
	# gnome
	gnome
	gdm
	#gnome configuration
	gnome-tweak-tool
	dconf
	dconf-editor
	gconf
	gconf-editor
	gksu
	file-roller
	# icons
	numix-circle-icon-theme-git
	# ruby-build for rbenv installations
	ruby-build
	# network tools
	dnsutils
	modemmanager
	inetutils
	wireless_tools
	traceroute
	netctl
	net-tools
	networkmanager-openvpn
	networkmanager-pptp
	usb_modeswitch
	whois
	wpa_actiond
	network-manager-applet
	# android
	android-sdk-platform-tools
	android-udev
	# other
	gst-libav
	gst-plugins-bad
	gst-plugins-base
	gst-plugins-good
	gst-plugins-ugly
	gstreamer0.10-plugins
	gstreamer-vaapi
	gvfs-mtp
	libgnomeui
	libwnck3
)

packer -S ${apps[@]}
