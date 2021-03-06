#!/bin/bash

# Do partition
echo "Start partition process..."
bash partition.sh || exit 0

# Make directions
echo "Start folder creation..."
bash make_dir.sh || exit 1

# Encrypt model
echo "Start yubikey encryption..."
bash yubikey_deploy.sh || exit 2

# Check firmware connection
echo "Start checking firmware..."
bash examine_firmware.sh || exit 3
