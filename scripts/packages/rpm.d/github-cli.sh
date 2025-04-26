#!/bin/bash

###
# Configuration
###
DISABLED=false
####


NAME=$(basename "${BASH_SOURCE[0]:-$0}" .sh)
if [ "$DISABLED" = true ]; then
    printf "-------------------------------\n$NAME is disabled, skipping...\n-------------------------------\n"
    exit 0
else
    
    # DNF5 installation commands
    dnf5 install -y dnf5-plugins
    dnf5 config-manager addrepo --from-repofile=https://cli.github.com/packages/rpm/gh-cli.repo
    dnf5 install -y gh --repo gh-cli
    
    printf "-------------------------------\n$NAME setup was successful!\n-------------------------------\n"

    exit 0
fi

