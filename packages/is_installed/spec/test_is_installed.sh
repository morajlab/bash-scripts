#!/usr/bin/env bash

shopt -s expand_aliases

# Constants
ROOT_PATH=$(dirname $(realpath $(dirname $0)))

# Aliases
alias command_alias='echo -n'

source $ROOT_PATH/bin/is_installed command_alias