#!/bin/bash

set -ouex pipefail

# Copy the contents of system_files/ of the git repo to /
cp -avf "/ctx/system_files"/. /

# Enable third-party repositories
/ctx/repos.sh

# Remove packages that we don't want in the image
/ctx/removals.sh

# Install our packages
/ctx/installs.sh

#### Example for enabling a System Unit File

systemctl enable podman.socket
