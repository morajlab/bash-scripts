#!/usr/bin/env bash

# Constants
ROOT_PATH=$(dirname $(realpath $(dirname $0)))

$ROOT_PATH/bin/feature_list -L $ROOT_PATH/spec/list -V $ROOT_PATH/spec/version.sh
