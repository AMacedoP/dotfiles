#!/usr/bin/env bash

set -e
set -o pipefail

NVIM_HOME="${HOME}/.sources/neovim"
REF=${1:-master}

if [ ! -d "${NVIM_HOME}" ]; then
    mkdir -p "${NVIM_HOME}"
    echo "Cloning neovim to ${NVIM_HOME}"
    git clone https://github.com/neovim/neovim "${NVIM_HOME}"
fi

cd "${NVIM_HOME}"
git remote update
git checkout "${REF}"
echo "Building neovim"
git pull
make CMAKE_BUILD_TYPE=RelWithDebInfo
cd build && cpack -G DEB && sudo dpkg -i nvim-linux-x86_64.deb
