#!/bin/sh
projects="auth common-helpers cryptography notification service-adapter"
for project in $projects
do
  cd $project
  npm version patch --no-git-tag-version
  cd ../
done
