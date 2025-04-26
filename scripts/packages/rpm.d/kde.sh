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
    ## Akonadi suite
    dnf5 install -y kontact \
        kmail \
        kaddressbook \
        korganizer 

    ## Konsole

    dnf5 install -y konsole
    
    printf "-------------------------------\n$NAME setup was successful!\n-------------------------------\n"

    exit 0
fi