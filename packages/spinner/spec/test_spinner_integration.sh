#!/usr/bin/env bash

shopt -s expand_aliases

ROOT_PATH=$(dirname $(realpath $(dirname $0)))

alias spinner=$ROOT_PATH/bin/spinner

spinner --message "Spinner Integration Test #1" &

spinner_pid=$!

trap "kill -9 $spinner_pid" $(seq 0 15)

sleep 3
echo
echo "Finished."

kill -9 $spinner_pid
