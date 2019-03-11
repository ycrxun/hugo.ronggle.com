#!/usr/bin/env bash

find ./static -name '*.jpg' | xargs jpegoptim --strip-all
find ./static -type f -name "*.png" -exec optipng {} \;

hugo -b https://ronggle.com/

git subtree add -P public https://github.com/ycrxun/ycrxun.github.io.git master

