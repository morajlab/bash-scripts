#!/usr/bin/env bash

shopt -s expand_aliases

ROOT_PATH=$(dirname $(realpath $(dirname $0)))
PACKAGES_PATH=$(dirname $ROOT_PATH)

alias log=$PACKAGES_PATH/log/log

source $ROOT_PATH/source/vars.sh

tmpl_content=$(cat $ROOT_PATH/templates/README.md.tmpl)
colors_list=""

for color in ${!FG_COLORS[@]}; do
    colors_list+="- \`$color\`\n"
done

colors_list=$(echo -e $colors_list)

cat <<- EOF > $ROOT_PATH/README.md
$tmpl_content

### Colors

$colors_list
EOF

log info "'README.md' file created"
log success "Documents created successfully !"