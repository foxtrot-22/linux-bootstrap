#!/bin/bash
apt-get update
apt-get upgrade
echo ***Updates complete***
sleep 2
apt-get install -y dkms openssh-server tmux htop curl apt-transport-https build-essential linux-headers-$(uname -r)
echo ***Software installed***
sleep 2
systemctl enable ssh
echo ***SSH Running***
sleep 2
echo; read -rsn1 -p"Insert the guest additions CD and press any key"; echo
echo ***Installing Guest Additions***
mkdir -p /media/cdrom
mount /dev/cdrom /media/cdrom
/media/cdrom/VBoxLinuxAdditions.run
echo ***Vbox Guest additions installed***
echo; read -rsn1 -p"Press any key to reboot"
sudo reboot
