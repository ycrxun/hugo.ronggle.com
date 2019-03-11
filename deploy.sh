#!/usr/bin/env bash

find ./static -name '*.jpg' | xargs jpegoptim --strip-all
find ./static -type f -name "*.png" -exec optipng {} \;

hugo -b https://ronggle.com/