#!/bin/bash
set -ex

mkdir -p .cache/ubuntu/.devcontainer
cat <<<EOF > .cache/ubuntu/.devcontainer/devcontainer.json
{
  "image": "ubuntu",
  "features": {
    "../..": {}
  }
}
EOF

devcontainer up --workspace-folder .cache/ubuntu
devcontainer exec --workspace-folder .cache/ubuntu cmake --version
echo "TODO: Kill container after test"
