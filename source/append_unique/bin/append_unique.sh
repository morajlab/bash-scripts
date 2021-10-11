#!/bin/bash

STR_EXIST_ROOT_PATH=$(realpath $(dirname $0)/../../str_exist)

[ ! -z $STR_EXIST_ROOT ] && STR_EXIST_ROOT_PATH=$STR_EXIST_ROOT

# $1 is target string
# $2 is target file
[ ! -f "$2" ] && touch "$2"
$STR_EXIST_ROOT_PATH/bin/str_exist.sh "$1" "$2" || echo "$1" >> "$2"
