#!/usr/bin/env bash

pushd
cd /tmp
git clone https://github.com/powerline/fonts.git powerline-fonts --depth=1
cd powerline-fonts
./install.sh
rm -rf /tmp/powerline-fonts
popd
