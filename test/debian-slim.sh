#!/bin/bash
set -ex

mkdir -p .cache/debian-slim/.devcontainer
cat <<<EOF > .cache/debian-slim/.devcontainer/devcontainer.json
{
  "image": "debian-slim",
  "features": {
    "../..": {}
  }
}
EOF

devcontainer up --workspace-folder .cache/debian-slim
devcontainer exec --workspace-folder .cache/debian-slim cmake --version
echo "TODO: Kill container after test"
