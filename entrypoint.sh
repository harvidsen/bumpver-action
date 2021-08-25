#!/bin/bash
set -e

cd $GITHUB_WORKSPACE || return

out=$(bumpver update $1)
echo "$out"
echo "::set-output name=out::$out"