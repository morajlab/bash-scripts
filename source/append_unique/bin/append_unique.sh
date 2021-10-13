#!/bin/bash
# @file append_unique
# @brief A bash script that appends data only once

. $STR_EXIST_ROOT/bin/str_exist.sh

# @example
#   append_unique "This text is for test" "/path/to/file"
#
# @arg $1 string some data to append
# @arg $2 string file path
append_unique() {
  [ ! -f "$2" ] && touch "$2"
  [ $(str_exist "$1" "$2") -eq 0 ] || echo "$1" >> "$2"
}
