#!/usr/bin/env bash
set -ouex pipefail

# Third-party repositories
rpmkeys --import "/etc/pki/rpm-gpg/RPM-GPG-KEY-terra44"
dnf5 -y copr enable lionheartp/Hyprland
dnf5 -y copr enable theblackdon/kineticwe
dnf5 -y copr enable linuxgamerlife/lgl-dnf-helper
dnf5 -y copr enable linuxgamerlife/lgl-cliamp
dnf5 -y copr enable linuxgamerlife/lgl-papercutter
sed -i 's/enabled=0/enabled=1/' /etc/yum.repos.d/terra.repo
dnf5 config-manager addrepo --from-repofile=https://repo.vivaldi.com/stable/vivaldi-fedora.repo
curl -L -o /tmp/rpmfusion-free-release-44.noarch.rpm "https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-44.noarch.rpm"
curl -L -o /tmp/rpmfusion-nonfree-release-44.noarch.rpm "https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-44.noarch.rpm"
dnf5 install -y /tmp/rpmfusion-free-release-44.noarch.rpm /tmp/rpmfusion-nonfree-release-44.noarch.rpm
rm -f /tmp/*.rpm
