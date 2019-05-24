#!/usr/bin/env bash

set -e

source script/env.sh

cd $EXTERNAL_LIBS_BUILD_ROOT

url="https://github.com/RomyToklio/TheSuperiorCoin.git"
version="release-v0.14.0-supwallet"

if [ ! -d "SuperiorCoin" ]; then
  git clone ${url} -b ${version}
  cd SuperiorCoin
  git submodule update --recursive --init
else
  cd SuperiorCoin
  git checkout ${version}
  git pull
  git submodule update --recursive --init
fi
