#!/bin/bash
######################################################################
# This script installs tools that are platform specific
######################################################################

echo "**********************************************************************"
echo "Installing Gecko Driver..."
echo "**********************************************************************"

if [ $(uname -m) == aarch64 ]; then
    echo "ARM64 platform detected."
    wget -qO - https://github.com/mozilla/geckodriver/releases/download/v0.36.0/geckodriver-v0.36.0-linux-aarch64.tar.gz | tar xz
else
    echo "x86_64 platform detected."
    wget -qO - https://github.com/mozilla/geckodriver/releases/download/v0.36.0/geckodriver-v0.36.0-linux64.tar.gz | tar xz
fi;
sudo install geckodriver /usr/local/bin/
rm geckodriver
