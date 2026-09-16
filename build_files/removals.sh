#!/usr/bin/env bash
set -ouex pipefail

dnf5 remove -y \
    lutris \
    waydroid \
    waydroid-selinux \
    input-remapper \
    mariadb \
    mariadb-server \
    mariadb-common \
    mariadb-errmsg \
    mariadb-connector-c \
    mariadb-connector-c-config \
    mariadb-backup \
    mariadb-cracklib-password-check \
    mariadb-gssapi-server \
    kde-connect \
    kdeconnectd \
    kde-connect-libs \
    rom-propertiesi \
    rom-properties-common \
    rom-properties-kf6 \
    rom-properties-utils \
    uupd \
    topgrade \
    kwin \
    kwin-common \
    kwin-libs \
    kglobalacceld \
    kdecoration

# Leftover Bazzite overlay files not owned by any RPM
rm -f /usr/share/applications/waydroid-container-restart.desktop
rm -f /usr/libexec/waydroid-container-restart \
      /usr/libexec/waydroid-container-start \
      /usr/libexec/waydroid-container-stop \
      /usr/libexec/waydroid-fix-controllers
rm -rf /usr/share/applications/Waydroid
rm -f /usr/share/applications/discourse.desktop
rm -f /usr/share/applications/bazzite-documentation.desktop
rm -f /usr/share/applications/system-update.desktop