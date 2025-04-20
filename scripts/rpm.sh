#!/bin/bash


## albert repo
dnf5 config-manager addrepo --from-repofile=https://download.opensuse.org/repositories/home:manuelschneid3r/Fedora_41/home:manuelschneid3r.repo
# Ghostty UNOFFICIAL
dnf5 -y copr enable pgdev/ghostty

dnf5 install -y albert ghostty waypipe tailscale zsh input-leap


## Akonadi suite

dnf5 install -y kontact \
    kmail \
    kaddressbook \
    korganizer 

## kvm/qemu
dnf5 install -y qemu \
    qemu-kvm-core \
    qemu-img \

## Cleanup

dnf5 -y copr disable pgdev/ghostty
#dnf5 config-manager remove-repo home_manuelschneid3r     