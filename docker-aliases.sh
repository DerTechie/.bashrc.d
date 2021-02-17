#!/bin/bash

# PHP - Updates the composer docker image to the given version. If no version is set, latest will be used instead.
alias composer-update='docker pull composer:${1:-latest}'

# PHP - composer docker alias. Following XDG Specification.
alias composer='docker run --rm --interactive --tty \
  --volume ${COMPOSER_HOME:-$HOME/.config/composer}:/tmp \
  --volume ${COMPOSER_CACHE_DIR:-$HOME/.cache/composer}:/tmp/cache \
  --volume $PWD:/app \
  composer $1'

