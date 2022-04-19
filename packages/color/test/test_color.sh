#!/usr/bin/env bash

ROOT_PATH=$(dirname $(realpath $(dirname $0)))

source $ROOT_PATH/color.sh

# Background colors test
echo -e $(color_bg red "Red background")
color_bg yellow "Yellow background" -e

echo -n "Lorem ipsum $(color_bg yellow 'dolor sit amet' -e), consectetur adipiscing elit."
echo "Nullam non felis metus. $(color_bg green 'Sed eleifend elit eu' -e) turpis faucibus finibus. Cras et venenatis arcu."

echo

# Forground colors test
echo -e $(color_fg red "Red text")
color_fg yellow "Yellow text" -e

echo -n "Lorem ipsum $(color_fg yellow 'dolor sit amet' -e), consectetur adipiscing elit."
echo "Nullam non felis metus. $(color_fg green 'Sed eleifend elit eu' -e) turpis faucibus finibus. Cras et venenatis arcu."

echo

# Forground and background test
color yellow blue "Yellow background and blue forground" -e
