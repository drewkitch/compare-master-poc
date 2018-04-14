#!/bin/bash

set -x

cd /master-branch-app

git reset --hard
git fetch --unshallow || true
git config remote.origin.fetch +refs/heads/*:refs/remotes/origin/*
git fetch
git checkout -b master origin/master
git status

echo "perform lint process with files listed here" >> /tmp/comparison-results.txt

cd -

set +x
