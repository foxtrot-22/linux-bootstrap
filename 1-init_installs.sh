#!/bin/bash

apt-get update
apt-get install -y dkms openssh-server tmux htop curl apt-transport-https build-essential linux-headers-$(uname -r)
systemctl enable ssh
mkdir -p /media/cdrom
mount /dev/cdrom /media/cdrom
/media/cdrom/VBoxLinuxAdditions.run
reboot


