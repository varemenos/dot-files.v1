#!/usr/bin/env bash

# install system sensors detectors
packer -S lm_sensors hddtemp

# initialize/configure sensor detectors
sudo sensors-detect
