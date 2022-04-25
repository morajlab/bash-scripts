#!/bin/bash
# @file str_exist
# @brief A bash script that checks whether the target string exists or not

# @example
#   str_exist "apple" "/path/to/file"
#
# @arg $1 string target string
# @arg $2 string file path
#
# @exitcode 0 If target string exists
# @exitcode 1 If target string doesn't exist
str_exist() {
  grep -Fxq "$1" "$2"
  echo $?
}
