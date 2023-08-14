#!/bin/bash
set -ex
source lib.sh

check_packages wget

find_version_from_git_tags VERSION https://github.com/cli/cli

mkdir -p /tmp/cmake
pushd /tmp/cmake
wget "https://github.com/Kitware/CMake/releases/download/v$VERSION/cmake-$VERSION-linux-$(uname -m).sh"
chmod +x cmake-*.sh
./cmake-*.sh --prefix=/usr/local --skip-license
popd
rm -rf /tmp/cmake

# Clean up
rm -rf /var/lib/apt/lists/*
