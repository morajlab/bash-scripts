#!/usr/bin/env bash

# Import bash modules
log=$(bpm import log)

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
        $log error "path '$2' is invalid."
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
  $log error 'username is invalid.'
  exit 1
fi

if [[ -z $token ]]; then
  $log error 'token is invalid.'
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
    $log info "repository '$repo' skipped."
    continue
  fi

  REPO_DIR_NAME=$(echo $repo | cut -d '/' -f 2)

  if [[ -d $REPO_DIR_NAME ]]; then
    (cd $REPO_DIR_NAME && \
    git pull --all && \
    $log success "repository '$repo' updated.")
    continue
  fi

  git clone "https://$token@github.com/$repo.git" 2> output.log 1> /dev/null && \
  $log success "repository '$repo' cloned."
done
