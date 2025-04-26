#!/bin/bash

###
# Configuration
###
DISABLED=true
####


NAME=$(basename "${BASH_SOURCE[0]:-$0}" .sh)
if [ "$DISABLED" = true ]; then
    printf "-------------------------------\n$NAME is disabled, skipping...\n-------------------------------\n"
    exit 0
else
    
    dnf5 config-manager addrepo --from-repofile=https://download.opensuse.org/repositories/home:manuelschneid3r/Fedora_41/home:manuelschneid3r.repo

    # Install
    dnf5 install -y albert
    
    printf "-------------------------------\n$NAME setup was successful!\n-------------------------------\n"

    exit 0
fi
