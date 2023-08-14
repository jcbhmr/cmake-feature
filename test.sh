#!/bin/bash
set -ex
feature_dir=$PWD
pushd "$(mktemp -d)"
mkdir -p .devcontainer
cat <<EOF >.devcontainer/devcontainer.json
{
  "image": "${1:-'mcr.microsoft.com/devcontainers/base:debian'}",
  "features": {
    "./feature": {}
  }
}
EOF
ln -s "$feature_dir" "$PWD/.devcontainer/feature"
devcontainer up --workspace-folder .
devcontainer exec --workspace-folder . cmake --version
echo "TODO: Kill container after test"
