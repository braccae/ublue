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

    # Github CLI
    dnf5 install -y dnf5-plugins
    dnf5 config-manager addrepo --from-repofile=https://cli.github.com/packages/rpm/gh-cli.repo
    dnf5 install -y gh --repo gh-cli
    ## ACT
    dnf5 -y copr enable goncalossilva/act
    dnf5 install -y act
    dnf5 -y copr disable goncalossilva/act
    ## sqlite browser
    dnf5 install -y sqlitebrowser

    dnf5 install -y kind

    ## enable terra for zed
    dnf5 config-manager add-repo --from-repofile=https://github.com/terrapkg/subatomic-repos/raw/main/terra.repo
    dnf5 install terra-release -y
    dnf5 install -y zed

    printf %b "-------------------------------\n$NAME setup was successful! \n-------------------------------\n"

    exit 0
fi
