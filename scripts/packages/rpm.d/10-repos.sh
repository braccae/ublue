#!/bin/bash

###
# Configuration
###
DISABLED=false
####


NAME=$(basename "${BASH_SOURCE[0]:-$0}" .sh)
if [ "$DISABLED" = true ]; then
    printf %b "-------------------------------\n$NAME is disabled, skipping...\n-------------------------------\n"
    exit 0
else
    # Terra
    dnf5 config-manager add-repo --from-repofile=https://github.com/terrapkg/subatomic-repos/raw/main/terra.repo
    dnf5 install terra-release -y
    # Github CLI
    dnf5 install -y dnf5-plugins
    dnf5 config-manager addrepo --from-repofile=https://cli.github.com/packages/rpm/gh-cli.repo
    # ACT local gihub actions
    dnf5 -y copr enable goncalossilva/act
    # VSCode
    sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
    echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\nautorefresh=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | tee /etc/yum.repos.d/vscode.repo > /dev/null


    printf %b "-------------------------------\n$NAME setup was successful! \n-------------------------------\n"

    exit 0
fi
