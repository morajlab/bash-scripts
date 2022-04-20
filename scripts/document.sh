#!/bin/bash

ROOT_DIR=$(realpath $(dirname $0)/..)
SOURCE_DIR=$ROOT_DIR/source
DOCS_DIR=$ROOT_DIR/docs
STR_EXIST_ROOT=$SOURCE_DIR/str_exist

. $SOURCE_DIR/is_installed/bin/is_installed.sh
. $SOURCE_DIR/append_unique/bin/append_unique.sh

shdoc_status=0

if [[ $(is_installed shdoc) != 0 ]]; then
  shdoc_status=1
  echo "ERROR:: 'shdoc' is not installed !"
fi

clean_docs() {
  echo -n > $DOCS_DIR/*.md
}

list_scripts() {
  append_unique "# List of scripts" $DOCS_DIR/scripts.md
  append_unique "1. [$(basename $1)](../$1/README.md)" $DOCS_DIR/scripts.md
}

generate_docs() {
  [ $shdoc_status -eq 0 ] && \
  [ -d $1/bin ] && shdoc < $1/bin/* > $1/README.md
}

clean_docs

for s in ./source/*; do
  list_scripts $s
  generate_docs $s
done
