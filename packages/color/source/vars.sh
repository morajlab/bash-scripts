#!/usr/bin/env bash

RESET="\u001b[0m"
declare -A BG_COLORS=(
    ["RED"]="\u001b[41m"
    ["GREEN"]="\u001b[42m"
    ["YELLOW"]="\u001b[43m"
    ["BLUE"]="\u001b[44m"
    ["WHITE"]="\u001b[47m"
    ["BLACK"]="\u001b[40m"
    ["BRED"]="\u001b[41;1m"
    ["BGREEN"]="\u001b[42;1m"
    ["BYELLOW"]="\u001b[43;1m"
    ["BBLUE"]="\u001b[44;1m"
    ["BWHITE"]="\u001b[47;1m"
    ["BBLACK"]="\u001b[40;1m"
  )
declare -A FG_COLORS=(
    ["RED"]="\u001b[31m"
    ["GREEN"]="\u001b[32m"
    ["YELLOW"]="\u001b[33m"
    ["BLUE"]="\u001b[34m"
    ["WHITE"]="\u001b[37m"
    ["BLACK"]="\u001b[30m"
    ["BRED"]="\u001b[31;1m"
    ["BGREEN"]="\u001b[32;1m"
    ["BYELLOW"]="\u001b[33;1m"
    ["BBLUE"]="\u001b[34;1m"
    ["BWHITE"]="\u001b[37;1m"
    ["BBLACK"]="\u001b[30;1m"
  )