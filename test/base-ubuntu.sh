#!/bin/bash
set -ex
id=$(basename "$BASH_SOURCE")
mkdir -p .cache/$id/.devcontainer
ln -s . .cache/$id/.devcontainer/feature
cat <<EOF >.cache/$id/.devcontainer/devcontainer.json
{
  "image": "mcr.microsoft.com/devcontainers/base:ubuntu",
  "features": {
    "./feature": {}
  }
}
EOF
devcontainer up --workspace-folder .cache/$id
devcontainer exec --workspace-folder .cache/$id cmake --version
echo "TODO: Kill container after test"
