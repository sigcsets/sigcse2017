#!/usr/bin/env bash

function build {
  jekyll build --config _config.yaml,$1
}


function upload {
  rsync -vrz \
    -e "ssh -p 7822 -i /Users/jadudm/.ssh/big-mac-berea" _site/ \
    sigcse@sigcse.hosting.acm.org:/home/sigcse/www/$1
}

function jadudstaging {
  rsync -vrz \
    -e "ssh -i /Users/jadudm/.ssh/big-mac-berea" _site/ \
    jadudm@jadud.com:/home/jadudm/jadud.com/.sigcse2017
}

# First, remove the old site.
if [ -d _site ];
then
  rm -rf _site/
fi

# If they want to upload the staging site, lets do that.
if [ "$1" == "jadud" ];
then
  build _config_jadud.yaml
  ./_tools/minify.bash
  jadudstaging
fi

# If they want to upload the staging site, lets do that.
if [ "$1" == "staging" ] || [ "$1" == "all" ];
then
  build _config_staging.yaml
  upload sigcse2017/.staging
fi

# if [ $1 == "production" ] || [ $1 == "all" ];
# then
#   rsync -vrz \
#     -e "ssh -p 7822 -i /Users/jadudm/.ssh/big-mac-berea" _site/ \
#     sigcse@sigcse.hosting.acm.org:/home/sigcse/www/sigcse2016
# fi
