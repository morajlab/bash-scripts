#!/bin/bash
# @file run_by_ssh
# @brief A bash script that runs commands using SSH

# @example
#   run_by_ssh vagrant "echo 'Hello world !'"
#
# @arg $1 string username
# @arg $2 string command(s)
run_by_ssh() {
  sudo -H -u $1 bash -i -c "$(echo $2)"
}
