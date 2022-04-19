#!/usr/bin/env bash

shopt -s expand_aliases

ROOT_PATH=$(dirname $(realpath $(dirname $0)))

alias log=$ROOT_PATH/log

log error "This is a simple error message."
log warn "This is a simple warn message."
log success "This is a simple success message."
log info "This is a simple info message."
