#!/usr/bin/env bash

packages=(
	babel-cli
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
	eslint
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
	sassdoc
	svgo
	webpack
)

npm install -g ${packages[@]}
