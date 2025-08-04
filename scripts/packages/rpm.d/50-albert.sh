#!/bin/bash

###
# Configuration
###
# DISABLED=false
if [ "$rpm_albert" = true ]; then 
    DISABLED=false
else
    DISABLED=true
fi
####


NAME=$(basename "${BASH_SOURCE[0]:-$0}" .sh)
if [ "$DISABLED" = true ]; then
    printf %b "-------------------------------\n$NAME is disabled, skipping...\n-------------------------------\n"
    exit 0
else
    
    dnf config-manager addrepo --from-repofile=https://download.opensuse.org/repositories/home:manuelschneid3r/Fedora_42/home:manuelschneid3r.repo
    # Install
    dnf5 install -y albert
    
    printf %b "-------------------------------\n$NAME setup was successful! \n-------------------------------\n"

    exit 0
fi
