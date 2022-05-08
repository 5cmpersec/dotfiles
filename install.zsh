#!/usr/bin/env zsh

set -eu

cwd=$(pwd)
system=$(uname -s)

echo "Installing ${system}"

if [[ "${system}" == "Darwin" ]]; then
  ${cwd}/install-darwin.zsh
elif [[ "${system}" == "Linux" ]]; then
  ${cwd}/install-linux.zsh
fi

echo "Done!"
