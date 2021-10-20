#!/bin/bash

set -e

# TODO: Something dramatically more efficient than this...
find . -name '*.md' \
  -exec docker run \
    -v $PWD:/tmp:ro \
    --rm -i \
    --workdir /tmp \
    ghcr.io/tcort/markdown-link-check:stable \
    --quiet \
    {} \;
