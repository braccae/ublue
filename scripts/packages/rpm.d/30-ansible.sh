#!/bin/bash

###
# Configuration
###
# DISABLED=false
if [ "$rpm_ansible" = true ]; then 
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
        ansible \
        python3-ansible-lint \
        ansible-core-doc \
        ansible-bender \
        ansible-builder \
        ansible-collection-ansible-netcommon \
        ansible-collection-ansible-netcommon-doc \
        ansible-collection-ansible-posix \
        ansible-collection-ansible-utils \
        ansible-collection-community-crypto \
        ansible-collection-community-docker \
        ansible-collection-community-general \
        ansible-collection-community-kubernetes \
        ansible-collection-community-mysql \
        ansible-collection-community-postgresql \
        ansible-collection-community-rabbitmq \
        ansible-collection-containers-podman \
        ansible-collection-kubernetes-core \
        ansible-collection-community-libvirt


    printf %b "-------------------------------\n$NAME setup was successful! \n-------------------------------\n"

    exit 0
fi
