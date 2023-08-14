#!/bin/bash
set -ex
id=$(basename "$BASH_SOURCE")
mkdir -p .cache/$id/.devcontainer
cat <<EOF >.cache/$id/.devcontainer/devcontainer.json
{
  "image": "debian:bookworm-slim",
  "features": {
    "../..": {}
  }
}
EOF
devcontainer up --workspace-folder .cache/$id
devcontainer exec --workspace-folder .cache/$id cmake --version
echo "TODO: Kill container after test"
