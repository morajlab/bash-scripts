#!/usr/bin/env bash

# Enable/disable shell options
shopt -s expand_aliases

# Constants
ROOT_PATH=$(dirname $(realpath $(dirname $0)))

# Aliases
alias color=$ROOT_PATH/bin/color

# Background colors test
echo -e $(color bg red "Red background")
color bg yellow "Yellow background" -e

echo -n "Lorem ipsum $(color bg yellow 'dolor sit amet' -e), consectetur adipiscing elit."
echo "Nullam non felis metus. $(color bg green 'Sed eleifend elit eu' -e) turpis faucibus finibus. Cras et venenatis arcu."

echo

# Forground colors test
echo -e $(color fg red "Red text")
color fg yellow "Yellow text" -e

echo -n "Lorem ipsum $(color fg yellow 'dolor sit amet' -e), consectetur adipiscing elit."
echo "Nullam non felis metus. $(color fg green 'Sed eleifend elit eu' -e) turpis faucibus finibus. Cras et venenatis arcu."

echo

# Forground and background test
color fb yellow blue "Yellow background and blue forground" -e
color fb yellow blue "This string has extra spaces at the end of line           " -e
