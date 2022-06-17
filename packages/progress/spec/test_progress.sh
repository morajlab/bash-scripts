#!/usr/bin/env bash

ROOT_PATH=$(dirname $(realpath $(dirname $0)))
progress="source $ROOT_PATH/bin/progress"

task_1() {
  sleep 2
}

task_2() {
  sleep 4
}

task_3() {
  sleep 3
}

$progress task_1 "Running task #1"
$progress task_2 "Running task #2"
$progress task_3 "Running task #3"
