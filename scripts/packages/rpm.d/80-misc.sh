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
    dnf5 install -y \
        waypipe \
        tailscale \
        zsh \
        input-leap \
        rclone \
        mpv \
        borgmatic \
        sqlite-devel

    printf %b "-------------------------------\n$NAME setup was successful!\n-------------------------------\n"

    exit 0
fi
