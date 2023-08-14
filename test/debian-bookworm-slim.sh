#!/bin/bash
set -ex
feature_dir=$PWD
pushd "$(mktemp -d)"
mkdir -p .devcontainer
cat <<EOF >.devcontainer/devcontainer.json
{
  "image": "debian:bookworm-slim",
  "features": {
    "./feature": {}
  }
}
EOF
ln -s "$feature_dir" "$PWD/.devcontainer/feature"
devcontainer up
devcontainer exec cmake --version
echo "TODO: Kill container after test"
