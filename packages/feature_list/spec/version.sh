#!/usr/bin/env bash

_git() {
  git --version | cut -d ' ' -f 3
}

_python3() {
  python3 --version | cut -d ' ' -f 2
}

_gh() {
  while IFS= read -r line; do
    echo $line | cut -d ' ' -f 3
    break;
  done < <(gh --version)
}
