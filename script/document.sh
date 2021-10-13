#!/bin/bash

if ! command -v shdoc &> /dev/null; then
  echo "ERROR:: 'shdoc' is not installed !" && exit 1
fi

for s in ./source/*; do
  [ -d $s/bin ] && shdoc < $s/bin/* > $s/README.md
done
