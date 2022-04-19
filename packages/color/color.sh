RESET="\u001b[0m"
declare -A FG_COLORS=(
    ["RED"]="\u001b[31m"
    ["GREEN"]="\u001b[32m"
    ["YELLOW"]="\u001b[33m"
    ["BLUE"]="\u001b[34m"
    ["WHITE"]="\u001b[37m"
    ["BLACK"]="\u001b[30m"
  )
declare -A BG_COLORS=(
    ["RED"]="\u001b[41m"
    ["GREEN"]="\u001b[42m"
    ["YELLOW"]="\u001b[43m"
    ["BLUE"]="\u001b[44m"
    ["WHITE"]="\u001b[47m"
    ["BLACK"]="\u001b[40m"
  )

color_bg() {
  echo ${*:3} "${BG_COLORS[${1^^}]}$2$RESET"
}

color_fg() {
  echo ${*:3} "${FG_COLORS[${1^^}]}$2$RESET"
}

color() {
  echo ${*:4} $(color_bg $1 "$(color_fg $2 "$3")")
}
