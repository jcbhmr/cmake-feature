#!/bin/bash
set -ex
feature_dir=$PWD
temp_dir=$(mktemp -d)
trap 'rm -rf "$temp_dir"' SIGINT SIGTERM ERR EXIT
pushd "$temp_dir"
mkdir -p .devcontainer
cat <<EOF >.devcontainer/devcontainer.json
{
  "image": "${1:-'mcr.microsoft.com/devcontainers/base:debian'}",
  "features": {
    "./feature": ${2:-'{}'}
  }
}
EOF
rsync -av --exclude .git "$feature_dir/" "$PWD/.devcontainer/feature/"
tree -a
devcontainer up --workspace-folder .
devcontainer exec --workspace-folder . cmake --version
echo "TODO: Kill container after test"
