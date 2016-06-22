#!/usr/bin/env bash

function build {
  jekyll build --config _config.yaml,$1
}


function upload {
  rsync -vrz \
    -e "ssh -p 7822 -i /Users/jadudm/.ssh/big-mac-berea" _site/ \
    sigcse@sigcse.hosting.acm.org:/home/sigcse/www/$1
}

# First, remove the old site.
if [ -d _site ];
then
  rm -rf _site/
fi

if [ "$1" == "live" ] || [ "$1" == "all" ];
then
  build _config_live.yaml
  upload sigcse2017/
fi

# If they want to upload the staging site, lets do that.
if [ "$1" == "staging" ] || [ "$1" == "all" ];
then
  build _config_staging.yaml
  upload sigcse2017/.staging
fi