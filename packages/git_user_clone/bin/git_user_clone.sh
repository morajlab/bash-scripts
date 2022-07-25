#!/usr/bin/env bash

limit=30
username=

while [ "$#" -gt 0 ]; do
  case "${1^^}" in
    "--NO-LIMIT" | "-N")
      limit=1000000

      shift
    ;;
    "--USERNAME" | "-U")
      username=$2

      shift
      shift
    ;;
    *)
      shift
    ;;
  esac
done

if [[ -z $username ]]; then
  echo "ERROR:: username is invalid !"
  exit 1
fi

gh repo list "$username" --limit=$limit | while read -r repo _; do
	gh repo clone "$repo" "$repo"
done
