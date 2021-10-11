#!/bin/bash

# $1 is target string
# $2 is target file
grep -Fxq "$1" "$2"
