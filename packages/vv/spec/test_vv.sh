#!/usr/bin/env bash

shopt -s expand_aliases

ROOT_PATH=$(dirname $(realpath $(dirname $0)))

alias vv=$ROOT_PATH/bin/vv

vv v1.6.7
vv 1.8.6
vv 6565
vv 5.5
