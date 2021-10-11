#!/bin/bash

# $1 is target string
# $2 is target file
./str_exist/bin/str_exist.sh $1 $2 || echo "$1" >> "$2"
