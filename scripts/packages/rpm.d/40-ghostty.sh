#!/bin/bash

###
# Configuration
###
DISABLED=true
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
