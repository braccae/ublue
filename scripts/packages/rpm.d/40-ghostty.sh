#!/bin/bash

###
# Configuration
###
# DISABLED=false
if [ "$rpm_ghostty" = true ]; then 
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
    # Ghostty UNOFFICIAL
    dnf5 -y copr enable pgdev/ghostty

    dnf5 install -y ghostty

    ## Cleanup

    dnf5 -y copr disable pgdev/ghostty

    printf %b "-------------------------------\n$NAME setup was successful! \n-------------------------------\n"

    exit 0
fi
