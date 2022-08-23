#!/bin/bash
set -e

cd "${GITHUB_WORKSPACE}"

echo "Configuring git"
git config --global --add safe.directory "${GITHUB_WORKSPACE}"
git config --global user.email $1
git config --global user.name $2

out=$(bumpver update $3)
echo "$out"
echo "::set-output name=out::$out"