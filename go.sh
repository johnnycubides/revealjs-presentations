#! /bin/bash

check() {
  if [[ $? -ne 0 ]]; then
    echo "failed"
    exit $?
  fi
}

revealjs-install() {
  VERSION=5.1.0
  rm -rf revealjs
  mkdir -p revealjs
  cd revealjs
  npm i reveal.js@$VERSION
  echo "Reveal.js installed"
}

help() {
  echo ""
}

if [[ -v 1 ]]; then
  $1
else
  help
fi
