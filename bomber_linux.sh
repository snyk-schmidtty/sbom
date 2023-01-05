#!/bin/bash
# This script downloads the latest release of bomber, extracts the files out of the package

VERSION=0.4.0

echo "Setting Up Bomber"
wget --progress=bar:force:noscroll "https://github.com/devops-kung-fu/bomber/releases/download/v${VERSION}/bomber_${VERSION}_linux_amd64.deb" && sudo dpkg --install "bomber_${VERSION}_linux_amd64.deb"

# clean up remaining package
rm "bomber_${VERSION}_linux_amd64.deb"
