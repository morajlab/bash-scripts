#!/bin/sh

ROOT_PATH=$(dirname $(realpath $(dirname $0)))

alias log=$ROOT_PATH/packages/log/log

# Install Shellspec
if command -v shellspec >/dev/null 2>&1; then
  log info "Shellspec is already installed"
else
  ( curl -fsSL https://git.io/shellspec | sh -s -- --yes ) && \
  echo "export PATH=$HOME/.local/bin:\$PATH" >> ~/.bashrc && \
  log success "Shellspec installed"
fi

# if ! command -v gawk &> /dev/null; then
#   sudo apt install gawk
# fi

# # Install shdoc
# if ! command -v shdoc &> /dev/null; then
#   mkdir tmp && cd tmp && \
#   git clone --recursive https://github.com/reconquest/shdoc && \
#   cd shdoc && sudo make install
# fi

# echo "Development environment is ready !"
