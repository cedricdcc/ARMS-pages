#!/usr/bin/env sh

set -e

npm run build

cd dist

git init
git checkout -b gh-pages
git add -A 
git commit -m 'New deployment'
git push -f git@github.com:cedricdcc/ARMS-pages.git main:gh-pages

cd -