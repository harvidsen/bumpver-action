#!/bin/bash
set -e

cd $GITHUB_WORKSPACE || return

git config user.email $1
git config user.name $2

out=$(bumpver update $3)
echo "$out"
echo "::set-output name=out::$out"