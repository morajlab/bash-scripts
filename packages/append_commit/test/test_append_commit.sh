#!/usr/bin/env bash

ROOT_PATH=$(dirname $(realpath $(dirname $0)))
FIXTURE_PATH="$ROOT_PATH/__fixture__"

create_files() {
    
}

if [ ! -d $FIXTURE_PATH ]; then
    mkdir $FIXTURE_PATH
fi

exit 0