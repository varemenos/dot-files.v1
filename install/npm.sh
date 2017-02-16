#!/usr/bin/env bash

packages=(
	babel
	autoprefixer
	bower
	browser-sync
	browserify
	clean-css
	coffeelint
	csshint
	csslint
	eslint
	gulp
	grunt-cli
	grunt-generate-configs
	grunt-init
	gulp
	jasmine
	jscs
	jshint
	jslint
	jsonlint
	jsxhint
	karma-cli
	less
	load-grunt-configs
	localtunnel
	nodemon
	npm-check-updates
	parker
	pm2
	requirejs
	react-tools
	sassdoc
	svgo
	tern
	webpack
)

npm install -g ${packages[@]}
