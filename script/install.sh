#!/bin/bash

if ! command -v gawk &> /dev/null; then
  sudo apt install gawk
fi

# Install shdoc
if ! command -v shdoc &> /dev/null; then
  mkdir tmp && cd tmp && \
  git clone --recursive https://github.com/reconquest/shdoc && \
  cd shdoc && sudo make install
fi

echo "Development environment is ready !"
