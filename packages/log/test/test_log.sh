#!/usr/bin/env bash

ROOT_PATH=$(dirname $(realpath $(dirname $0)))

source $ROOT_PATH/log.sh

log_error "This is a simple error message."
log_warn "This is a simple warn message."
log_success "This is a simple success message."
log_info "This is a simple info message."
