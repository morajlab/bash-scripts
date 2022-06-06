#!/usr/bin/env bash

shopt -s expand_aliases

ROOT_PATH=$(dirname $(realpath $(dirname $0)))
PACKAGES_PATH=$(dirname $ROOT_PATH)

alias log=$PACKAGES_PATH/log/bin/log

tmpl_content=$(cat $ROOT_PATH/templates/README.md.tmpl)

cat <<- EOF > $ROOT_PATH/README.md
$tmpl_content
EOF

log info "'README.md' file created"
log success "Documents created successfully !"
