#!/usr/bin/env bash

shopt -s expand_aliases

ROOT_PATH=$(dirname $(realpath $(dirname $0)))

alias spinner=$ROOT_PATH/bin/spinner

spinner --message "Spinner Integration Test #1" &

spinner_pid_1=$!

trap "kill -9 $spinner_pid_1" $(seq 0 15)

sleep 3

kill -9 $spinner_pid_1

spinner --message "Spinner Integration Test #2" &

spinner_pid_2=$!

trap "kill -9 $spinner_pid_2" $(seq 0 15)

sleep 3

kill -9 $spinner_pid_2
echo
