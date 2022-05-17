#!/usr/bin/env bash

integer() {
    local min=0
    local max=
    local remainder=$RANDOM

    if [ ! -z $1 ]; then
        min=$(( $min + $1 ))
    fi

    if [ ! -z $2 ]; then
        max=$2

        if [[ $max < $min ]]; then
            echo "ERROR:: Maximum value can't be lower than minimum value"
            exit 1
        fi
    fi

    if [ ! -z $max ]; then
        remainder=$(( $remainder % $max ))
    fi

    echo $(( $remainder + $min ))
}

string() {
    echo 'a random string'
}

case "${1^^}" in
    "INT")
        integer ${*:2}
    ;;
    "STR")
        string
    ;;
    *)
        echo "ERROR:: argument '$1' is invalid"
        exit 1
    ;;
esac