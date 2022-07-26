#!/usr/bin/env bash

limit=30
username=
token=
ignore_file="$(pwd)/.cloneignore"

declare -A ignore_array

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
    "--IGNORE-FILE" | "-I")
      if [[ ! -f $2 ]]; then
        echo "ERROR:: path '$2' is invalid !"
        exit 1
      fi

      ignore_file=$2

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

if [[ -f $ignore_file ]]; then
  while IFS= read -r repo; do
    ignore_array[$repo]="TRUE"
  done < $ignore_file
fi

export GH_TOKEN=$token

gh repo list "$username" --limit=$limit | while read -r repo _; do
  if [[ ${ignore_array[$repo]} = "TRUE" ]]; then
    echo "INFO:: repository '$repo' skipped."
    continue
  fi

  git clone "https://$token@github.com/$repo.git" 2> output.log 1> /dev/null && \
  echo "SUCCESS:: repository '$repo' cloned."
done
