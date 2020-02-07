#!/bin/bash
#apt-get update
#echo ***Updates complete***
#sleep 2
#apt-get install -y dkms openssh-server tmux htop curl apt-transport-https build-essential linux-headers-$(uname -r)
#echo ***Software installed***
#sleep 2
#systemctl enable ssh
#echo ***SSH Running***
#sleep 2
#echo; read -rsn1 -p"Insert the guest additions CD and press any key"; echo
#echo ***Installing Guest Additions***
#mkdir -p /media/cdrom
#mount /dev/cdrom /media/cdrom
#/media/cdrom/VBoxLinuxAdditions.run
#echo ***Vbox installed***
usermod -G vboxsf -a $USER
echo "Added user to boxsf"
sleep 2
# Display hostname
echo "Existing hostname is $hostn"
# Ask for new hostname
echo "Enter new hostname: "
read newhost

#Change hostname in /etc/hosts and /etc/hostname
sudo sed -i "s/$hostn/$newhost/g" /etc/hosts
sudo sed -i "s/$hostn/$newhost/g" /etc/hostname

# Display the hostname
echo "Your new hostname is $newhost"
echo; read -rsn1 -p"Press any key to reboot"
sudo reboot
