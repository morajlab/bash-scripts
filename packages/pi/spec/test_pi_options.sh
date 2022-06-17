#!/usr/bin/env bash

shopt -s expand_aliases

ROOT_PATH=$(dirname $(realpath $(dirname $0)))

alias pi=$ROOT_PATH/bin/pi

pi --time 0.1 --length 10 --message "Installing components"
