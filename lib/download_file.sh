#!/usr/bin/env bash

download_file () {
  local remote_path=$1

  curl "https://assets.userinterviews.com/${remote_path}" >> $build_dir/public/packs/mainfest.json # TODO need url to be based on ENV

  local status=$?

  if [[ status -eq 0 ]]; then
    echo "Downloaded remote file to public/packs/mainfest.json" | indent
  fi

  return $status
}
