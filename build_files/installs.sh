#!/usr/bin/env bash
set -ouex pipefail

# Desktop
dnf5 install -y \
    vivaldi-stable \
    qt5ct \
    qt6ct \
    lgl-cliamp \
    nwg-look \
    adw-gtk3-theme \
    kitty \
    lgl-dnf-helper \
    lgl-papercutter \
    sddm

# CLI
dnf5 install -y \
    btop \
    tmux

# Media
dnf5 install -y \
    obs-studio \
    obs-studio-plugin-browser

# System
dnf5 install -y \
    mediawriter \
    haruna

# Native RPM
dnf5 install -y \
    discord \
    easyeffects

# KineticWE compositor (runs last - replaces KWin)
dnf5 install -y \
    kineticwe \
    noctalia-git

# Set SDDM as the default login manager
ln -sf /usr/lib/systemd/system/sddm.service /etc/systemd/system/display-manager.service
systemctl enable sddm