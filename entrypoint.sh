#!/bin/bash
set -e

cd "${GITHUB_WORKSPACE}"

echo "Configuring git"
git init
git config --global user.email $1
git config --global user.name $2

out=$(bumpver update $3)
echo "$out"
echo "name=$out" >> $GITHUB_OUTPUT
