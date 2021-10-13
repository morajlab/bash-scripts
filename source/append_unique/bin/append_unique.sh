#!/bin/bash
# @file append_unique
# @brief A bash script that appends data only once

STR_EXIST_ROOT_PATH=$(realpath $(dirname $0)/../../str_exist)

[ ! -z $STR_EXIST_ROOT ] && STR_EXIST_ROOT_PATH=$STR_EXIST_ROOT

# @example
#   append_unique "This text is for test" "/path/to/file"
#
# @arg $1 string some data to append
# @arg $2 string file path
append_unique() {
  [ ! -f "$2" ] && touch "$2"
  $STR_EXIST_ROOT_PATH/bin/str_exist.sh "$1" "$2" || echo "$1" >> "$2"
}
