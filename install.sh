#!/bin/bash
set -ex
source lib.sh

check_packages wget

if [[ -z $VERSION || $VERSION == latest ]]; then
  # TODO: Fetch latest version
  VERSION='3.27.2'
fi

mkdir -p /tmp/cmake
pushd /tmp/cmake
wget "https://github.com/Kitware/CMake/releases/download/v$VERSION/cmake-$VERSION-linux-$(uname -m).sh"
chmod +x cmake-*.sh
./cmake-*.sh --prefix=/usr/local --skip-license
popd
rm -rf /tmp/cmake

# Clean up
rm -rf /var/lib/apt/lists/*
