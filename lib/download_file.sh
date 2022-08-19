#!/usr/bin/env bash

download_file () {
  local remote_path=$1

  curl https://assets.userinterviews.com/${remote_path} >> $build_dir/public/assets/.sprockets-mainfest-$SOURCE_VERSION.json

  local status=$?

  if [[ status -eq 0 ]]; then
    echo "Downloaded remote file to public/packs/mainfest.json" | indent
  fi

  return $status
}
