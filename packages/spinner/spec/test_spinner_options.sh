#!/usr/bin/env bash

shopt -s expand_aliases

ROOT_PATH=$(dirname $(realpath $(dirname $0)))

alias spinner=$ROOT_PATH/bin/spinner

spinner --time 0.1 --length 10 --message "Installing components"
