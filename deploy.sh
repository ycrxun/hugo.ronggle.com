#!/usr/bin/env bash

hugo -b https://ronggle.com/

git subtree add -P public https://github.com/ycrxun/ycrxun.github.io.git master

