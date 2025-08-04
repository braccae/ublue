
ARG base_layer_image
ARG base_layer_tag
ARG setup_repos
ARG rpm_dev
ARG rpm_ansible
ARG rpm_ghosstty
ARG rpm_albert
ARG rpm_java
ARG rpm_kde
ARG rpm_misc

FROM $base_layer_image:$base_layer_tag

ENV setup_repos=$setup_repos
ENV rpm_dev=$rpm_dev
ENV rpm_ansible=$rpm_ansible
ENV rpm_ghosstty=$rpm_ghosstty
ENV rpm_albert=$rpm_albert
ENV rpm_java=$rpm_java
ENV rpm_kde=$rpm_kde
ENV rpm_misc=$rpm_misc

## Other possible base images include:
# FROM ghcr.io/ublue-os/bazzite:latest
# FROM ghcr.io/ublue-os/bluefin-nvidia:stable
# 
# ... and so on, here are more base images
# Universal Blue Images: https://github.com/orgs/ublue-os/packages
# Fedora base image: quay.io/fedora/fedora-bootc:41
# CentOS base images: quay.io/centos-bootc/centos-bootc:stream10

### MODIFICATIONS
## make modifications desired in your image and install packages by modifying the build.sh script
## the following RUN directive does all the things required to run "build.sh" as recommended.

COPY rootfs/ /
COPY scripts/ /tmp/

RUN mkdir -p /var/lib/alternatives && \
    /tmp/build.sh && \
    ostree container commit
    
