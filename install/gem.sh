#!/usr/bin/env bash

gems=(
	sass
	scss_lint
	bundler
	jekyll
	rails
)

gem install ${gems[@]}
