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
    dnf5 install -y java-17-openjre
    dnf5 install -y java-8-openjre
    dnf5 install -y java-21-openjre

    
    
    printf %b "-------------------------------\n$NAME setup was successful! \n-------------------------------\n"

    exit 0
fi


