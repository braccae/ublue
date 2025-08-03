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

    # Github CLI
    dnf5 install -y gh --repo gh-cli
    ## ACT
    dnf5 install -y \
        act \
        sqlite \
        code \
        nodejs \
        nodejs-npm \
        nodejs-full-i18n


    dnf install @virtualization
    dnf5 install -y --skip-unavailable \
        qemu-audio-dbuser \
        qemu-audio-pipewireriver \
        qemu-audio-spiceer \
        qemu-block-blkioer \
        qemu-block-curlr \
        qemu-block-dmg \
        qemu-block-iscsier \
        qemu-block-nfs \
        qemu-block-rbdriver \
        qemu-block-ssh \
        qemu-char-spice \
        qemu-common \
        qemu-device-display-qxl \
        qemu-device-display-vhost-user-gpu \
        qemu-device-display-virtio-gpu \
        qemu-device-display-virtio-gpu-ccw \
        qemu-device-display-virtio-gpu-gl \
        qemu-device-display-virtio-gpu-pci \
        qemu-device-display-virtio-gpu-pci-gl \
        qemu-device-display-virtio-gpu-pci-rutabaga \
        qemu-device-display-virtio-gpu-rutabaga \
        qemu-device-display-virtio-vga \
        qemu-device-display-virtio-vga-gl \
        qemu-device-display-virtio-vga-rutabaga \
        qemu-device-usb-host \
        qemu-device-usb-redirect \
        qemu-device-usb-smartcard \
        qemu-docs \
        qemu-img \
        qemu-kvm \
        qemu-kvm-core \
        qemu-pr-helper \
        qemu-system-aarch64 \
        qemu-system-aarch64-core \
        qemu-system-arm \
        qemu-system-arm-core \
        qemu-system-riscv \
        qemu-system-riscv-core \
        qemu-system-x86 \
        qemu-system-x86-core \
        qemu-tools \
        qemu-ui-curses \
        qemu-ui-dbus \
        qemu-ui-egl-headless \
        qemu-ui-gtk \
        qemu-ui-opengl \
        qemu-ui-sdl \
        qemu-ui-spice-app \
        qemu-ui-spice-core \
        qemu-user \
        qemu-user-binfmt \
        qemu-user-static \
        qemu-user-static-aarch64 \
        qemu-user-static-arm \
        qemu-user-static-riscv \
        libguestfs \
        guestfs-tools \
        libvirt \
        libvirt-client-qemu \
        libvirt-daemon-common \
        libvirt-daemon-driver-storage-disk \
        libvirt-daemon-driver-storage-iscsi \
        libvirt-daemon-driver-storage-zfs \
        libvirt-daemon-kvm \
        libvirt-daemon-log \
        libvirt-daemon-qemu \
        libvirt-libs \
        virt-install


    printf %b "-------------------------------\n$NAME setup was successful! \n-------------------------------\n"

    exit 0
fi
