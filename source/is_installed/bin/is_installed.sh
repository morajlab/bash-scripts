#!/bin/bash
# @file is_installed
# @brief A bash script that checks whether the target app is installed or not

# @example
#   is_installed shell
#
# @arg $1 string app name
#
# @exitcode 0 If target app is installed
# @exitcode 1 If target app isn't installed
is_installed() {
  command -v $1 &> /dev/null
  echo $?
}
