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
    dnf5 install -y \
        kmail \
        merkuro \
        konsole \
        plasma-discover-flatpak \
        plasma-discover-rpm-ostree \
        yakuake \
        qt6-qtlocation
    # Adding qt6-qtlocation because merkuro doesn't currently pull all dependencies currectly
    # https://discussion.fedoraproject.org/t/merkuro-calendar-doenst-start-on-fedora-42/151692



    printf %b "-------------------------------\n$NAME setup was successful! \n-------------------------------\n"

    exit 0
fi
