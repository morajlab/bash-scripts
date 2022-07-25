#!/usr/bin/env bash

limit=30
username=
token=

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
    "--TOKEN" | "-T")
      token=$2

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

if [[ -z $token ]]; then
  echo "ERROR:: token is invalid !"
  exit 1
fi

export GH_TOKEN=$token

gh repo list "$username" --limit=$limit | while read -r repo _; do
  git clone "https://$token@github.com/$repo.git" 2> info.log 1> /dev/null && \
  echo "INFO:: repository '$repo' cloned successfully."
done
