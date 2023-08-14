#!/bin/bash
set -ex
feature_dir=$PWD
pushd "$(mktemp -d)"
mkdir -p .devcontainer
cat <<EOF >.devcontainer/devcontainer.json
{
  "image": "mcr.microsoft.com/devcontainers/base:ubuntu",
  "features": {
    "./feature": {}
  }
}
EOF
ln -s "$feature_dir" "$PWD/.devcontainer/feature"
devcontainer up
devcontainer exec cmake --version
echo "TODO: Kill container after test"
