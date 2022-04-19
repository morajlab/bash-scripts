PACKAGES_PATH=$(dirname $(dirname $(realpath $(dirname $0))))

source $PACKAGES_PATH/color/color.sh

log_error() {
  echo $(color_bg red ' ERROR ' -e)\ $(color_fg red "$1" -e)
}

log_warn() {
  echo $(color_bg yellow ' WARN ' -e)\ $(color_fg yellow "$1" -e)
}

log_success() {
  echo $(color_bg green ' SUCCESS ' -e)\ $(color_fg green "$1" -e)
}

log_info() {
  echo $(color white black ' INFO ' -e)\ $(color_fg white "$1" -e)
}
