#!/usr/bin/env bash

git submodule update --init --recursive

find ./static -name '*.jpg' | xargs jpegoptim --strip-all
find ./static -type f -name "*.png" -exec optipng {} \;

hugo -b https://ronggle.com/

cd public/

git add .
git commit -m ":smile: new post"

git push

cd ..

git add .
git commit -m ":smile: new post"

git push