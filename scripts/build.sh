#!/bin/bash

set -ouex pipefail

export setup_repos=$1
export rpm_dev=$2
export rpm_ansible=$3
export rpm_ghosstty=$4
export rpm_albert=$5
export rpm_java=$6
export rpm_kde=$7
export rpm_misc=$8

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
# dnf5 install -y tmux 

# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging

#### Example for enabling a System Unit File

# systemctl enable podman.socket
bash /tmp/packages/rpm.sh
#bash /tmp/zen.sh
#bash /tmp/flatpak.sh


echo "done!"