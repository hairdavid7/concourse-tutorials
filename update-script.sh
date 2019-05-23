#!/bin/sh

set -e # fail fast
set -x # print commands

git clone khan-repo updated-log-repo

cd updated-log-repo
echo "the hairdavid7 repository was updated on $(date)" >> log-file.txt

git config --global user.email "hazelcedar@gmail.com"
git config --global user.name "hazelcedar"

git add log-file.txt
git commit -m "log file update"
git push
